import { ExecuteOrderFilter } from "./OverthrowEvents";
import { OverthrowSpawnItem } from "./OverthrowSpawnItem";
import { AssignTeams, ColorForTeam } from "./Teams";
import { AddVector } from "./Utility";
import { Config } from "./Config";
import { GameConfig } from "./GameConfig";



export class Overthrow {

    private overthrowSpawnItem = new OverthrowSpawnItem()

    public KILLS_TO_WIN_SINGLES:number = Config.KILLS_TO_WIN_SINGLES
    public KILLS_TO_WIN_DUOS:number = Config.KILLS_TO_WIN_DUOS
    public KILLS_TO_WIN_TRIOS:number = Config.KILLS_TO_WIN_TRIOS
    public KILLS_TO_WIN_QUADS:number = Config.KILLS_TO_WIN_QUADS
    public KILLS_TO_WIN_QUINTS:number = Config.KILLS_TO_WIN_QUINTS

    public countdownEnabled:boolean = Config.COUNTDOWN_ENABLED;
    public isGameTied:boolean = true;
    public TEAM_KILLS_TO_WIN:number = 50;
    public leadingTeamScore:number = 0;
    public leadingTeam:number = -1;
    public m_VictoryMessages:Map<number,string> = new Map<number, string>();
    public runnerupTeam:number = -1;
    public runnerupTeamScore:number = 0;
    public m_GatheredShuffledTeams: number[] = [];
    public spawncamps:Map<string, any> = new Map<string, any>(); // Похорошему вместо any написать новый тип (или это ентити ХЗ)
    public m_bFillWithBots:boolean = Config.FILL_WITH_BOTS;
    public _fPreGameStartTime:number = Config.PRE_GAME_START_TIME;
    public numSpawnCamps:number = 5;


    constructor(GatheredShuffledTeams : number[]){
        this.m_GatheredShuffledTeams = GatheredShuffledTeams
        this.SetUpFountains()  
        
        this.m_VictoryMessages.set(DotaTeam.GOODGUYS, "#VictoryMessage_GoodGuys");
        this.m_VictoryMessages.set(DotaTeam.BADGUYS, "#VictoryMessage_BadGuys");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_1, "#VictoryMessage_Custom1");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_2, "#VictoryMessage_Custom2");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_3, "#VictoryMessage_Custom3");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_4, "#VictoryMessage_Custom4");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_5, "#VictoryMessage_Custom5");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_6, "#VictoryMessage_Custom6");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_7, "#VictoryMessage_Custom7");
        this.m_VictoryMessages.set(DotaTeam.CUSTOM_8, "#VictoryMessage_Custom8");

        this.CustomSpawnCamps()
	
        ListenToGameEvent( "dota_npc_goal_reached", this.OnNpcGoalReached, this )
        GameRules.GetGameModeEntity().SetExecuteOrderFilter( (event) => ExecuteOrderFilter(event), this)
    }

    
    private SetUpFountains(): void{

        LinkLuaModifier( "modifier_fountain_aura_lua", "lua/modifier_fountain_aura_lua.lua", LuaModifierMotionType.NONE)
        LinkLuaModifier( "modifier_fountain_aura_effect_lua", "lua/modifier_fountain_aura_effect_lua.lua", LuaModifierMotionType.NONE )

        const fountainEntities = Entities.FindAllByClassname( "ent_dota_fountain")
        for (const fountainEnt  of fountainEntities ) {
            //print("fountain unit " .. tostring( fountainEnt ) )

            (fountainEnt as CDOTA_BaseNPC).AddNewModifier( fountainEnt as CDOTA_BaseNPC, undefined, "modifier_fountain_aura_lua", {} )
        }
    }

//-------------------------------------------------------------------------
// Event: Game state change handler
//-------------------------------------------------------------------------
    public OnGameRulesStateChange(){
        const nNewState = GameRules.State_Get()
        //print( "OnGameRulesStateChange: " .. nNewState )

        if (nNewState == GameState.HERO_SELECTION ) {
            AssignTeams(this.m_bFillWithBots)
        } else if (nNewState == GameState.PRE_GAME) {
            const numberOfPlayers = PlayerResource.GetPlayerCount()
            if ( numberOfPlayers > 7 ) {
               //this.TEAM_KILLS_TO_WIN = 25
                nCOUNTDOWNTIMER = 901 // В конфиг добавить #config
            } else if (  numberOfPlayers > 4 || numberOfPlayers <= 7 ) {
               //this.TEAM_KILLS_TO_WIN = 20
                nCOUNTDOWNTIMER = 721
            } else {
               //this.TEAM_KILLS_TO_WIN = 15
                nCOUNTDOWNTIMER = 601
            }
            switch(GetMapName()){
            case "forest_solo":{
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_SINGLES
                break;
            }
            case "desert_duo":{
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_DUOS
                break;
            }
            case "temple_quartet":{
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_QUADS
                break;
            }
            case "desert_quintet":{
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_QUINTS
                break;
            }
            default:{
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_TRIOS
                break;
            }
            }
           //print( "Kills to win = " .. tostring(this.TEAM_KILLS_TO_WIN) )
            CustomNetTables.SetTableValue("game_state", "victory_condition", { kills_to_win: this.TEAM_KILLS_TO_WIN } );
            print("Setting game_state value: "+ this.TEAM_KILLS_TO_WIN +" | GetValue: " + CustomNetTables.GetTableValue("game_state", "victory_condition"))

            this._fPreGameStartTime = GameRules.GetGameTime()

        } else if (  nNewState == GameState.STRATEGY_TIME) {
           // random for all players that haven't chosen yet
            for (let nPlayerID = 0; nPlayerID < DOTA_MAX_TEAM_PLAYERS; nPlayerID++) {
                const hPlayer = PlayerResource.GetPlayer( nPlayerID as PlayerID)
                if (hPlayer && !PlayerResource.HasSelectedHero( nPlayerID as PlayerID) ) {
                    hPlayer.MakeRandomHeroSelection()
                }
        }

        } else if (  nNewState == GameState.GAME_IN_PROGRESS ) {
           //print( "OnGameRulesStateChange: Game In Progress" )
            this.countdownEnabled = Config.COUNTDOWN_ENABLED
            CustomGameEventManager.Send_ServerToAllClients( "show_timer", {} as never )
            DoEntFire( "center_experience_ring_particles", "Start", "0", 0, this, this  )

            GameRules.GetGameModeEntity().SetAnnouncerDisabled( true )// Disable the normal announcer at game start
        }
    }


    

    CustomSpawnCamps(){
        for (let i = 1; i <= this.numSpawnCamps; i++ ){
            const campname = "camp" + i +"_path_customspawn"
            this.spawncamps.set(campname,
            {
                NumberToSpawn: RandomInt(3,5),
                WaypointName: "camp"+i+"_path_wp1"
            })
        }
        for (const [name,_ ] of this.spawncamps){
            this.spawnunits(name)
        }
    }

    spawncamp(campname : string){
	    this.spawnunits(campname)
    }
    public spawnunits(campname : string){
        const spawndata = this.spawncamps.get(campname)
        print("spawndataType = " + typeof(spawndata))
        const NumberToSpawn = spawndata.NumberToSpawn //How many to spawn
        const SpawnLocation = Entities.FindByName( undefined, campname )
        const waypointlocation = Entities.FindByName ( undefined, spawndata.WaypointName )
        if(SpawnLocation == undefined){
            return
        }

        const randomCreature = 
            [
                "basic_zombie",
                "berserk_zombie"
            ]
        const r = randomCreature[RandomInt(0,randomCreature.length-1)]
        print(r)
        for (let i = 1; i <= NumberToSpawn; i++){
            const creature = CreateUnitByName( "npc_dota_creature_" + r , AddVector(SpawnLocation.GetAbsOrigin(), RandomVector( RandomFloat( 0, 200 ) )), true, undefined, undefined, DotaTeam.NEUTRALS )
            //print ("Spawning Camps")
            creature.SetInitialGoalEntity( waypointlocation )
        }
    }

    public UpdateScoreboard(){
        const sortedTeams: {teamID:number, teamScore: number}[] = []
        this.m_GatheredShuffledTeams.forEach(team => {
            sortedTeams.push( { teamID: team, teamScore: GetTeamHeroKills( team ) } )
        })

        // reverse-sort by score
        table.sort( sortedTeams, (a,b) => { return ( a.teamScore > b.teamScore ) } )

        sortedTeams.forEach(t=> {
            const clr = ColorForTeam( t.teamID )

            // Scaleform UI Scoreboard
            const score = 
            {
                team_id: t.teamID,
                team_score: t.teamScore
            }
            CustomGameEventManager.Send_ServerToAllClients( "score_board", score )
        })
        
        // Leader effects (moved from OnTeamKillCredit)
        const leader = sortedTeams[0].teamID
        //print("Leader = " .. leader)
        this.leadingTeam = leader
        this.runnerupTeam = sortedTeams[1].teamID
        this.leadingTeamScore = sortedTeams[0].teamScore
        this.runnerupTeamScore = sortedTeams[1].teamScore
        if(sortedTeams[0].teamScore == sortedTeams[1].teamScore){
            this.isGameTied = true
             //print("Game tied")
        } else {
            this.isGameTied = false
             //print("Game no tied")
        }
        const allHeroes = HeroList.GetAllHeroes()

        if(this.leadingTeamScore >= this.TEAM_KILLS_TO_WIN){
            this.EndGame(this.leadingTeam)
        }

        //print(GetTeamName(leader))
        for (const entity of allHeroes) {
            if (entity.GetTeamNumber() == leader && !this.isGameTied){
                if (entity.IsAlive()) {
                    // Attaching a particle to the leading team heroes
                    const existingParticle = entity.Attribute_GetIntValue( "particleID", -1 )
                    if (existingParticle == -1) {
                        const particleLeader = ParticleManager.CreateParticle( "particles/leader/leader_overhead.vpcf", ParticleAttachment.OVERHEAD_FOLLOW, entity )
                        ParticleManager.SetParticleControlEnt( 
                            particleLeader, 
                            ParticleAttachment.OVERHEAD_FOLLOW, 
                            entity, 
                            ParticleAttachment.OVERHEAD_FOLLOW, 
                            "follow_overhead", 
                            entity.GetAbsOrigin(),
                            true)
                        entity.Attribute_SetIntValue( "particleID", particleLeader )
                    }
                }else{
                    const particleLeader = entity.Attribute_GetIntValue( "particleID", -1 )
                    if (particleLeader != -1) {
                        ParticleManager.DestroyParticle( particleLeader as ParticleID, true )
                        entity.DeleteAttribute( "particleID" )
                    }
                }
            }else{
                const particleLeader = entity.Attribute_GetIntValue( "particleID", -1 )
                if (particleLeader != -1) {
                    ParticleManager.DestroyParticle( particleLeader as ParticleID, true )
                    entity.DeleteAttribute( "particleID" )
                }
            }
        }
    }

    public CountdownTimer(){
        nCOUNTDOWNTIMER = nCOUNTDOWNTIMER - 1
        const t = nCOUNTDOWNTIMER
        //print( t )
        const minutes = math.floor(t / 60)
        const seconds = t - (minutes * 60)
        const m10 = math.floor(minutes / 10)
        const m01 = minutes - (m10 * 10)
        const s10 = math.floor(seconds / 10)
        const s01 = seconds - (s10 * 10)
        const broadcast_gametimer = 
            {
                timer_minute_10: m10,
                timer_minute_01: m01,
                timer_second_10: s10,
                timer_second_01: s01,
            }
        CustomGameEventManager.Send_ServerToAllClients( "countdown", broadcast_gametimer )
        if (t <= 120) {
            CustomGameEventManager.Send_ServerToAllClients( "time_remaining", broadcast_gametimer )
        }
    }

    public OverthrowThink() : number{
        this.UpdateScoreboard()
        // Stop thinking if game is paused
        if (GameRules.IsGamePaused()){
            return 1
        }   
        if (this.countdownEnabled){
            this.CountdownTimer();
            if (nCOUNTDOWNTIMER == 30) {
                CustomGameEventManager.Send_ServerToAllClients( "timer_alert", {} as never)
            }
            if (nCOUNTDOWNTIMER <= 0) {
                //Check to see if there's a tie
                if (!this.isGameTied) {
                    let victory_message = this.m_VictoryMessages.get(this.leadingTeam)
                    if(victory_message == undefined){
                        print("Victory message not found for team: " + this.leadingTeam)
                        return 1
                    }
                    GameRules.SetCustomVictoryMessage( victory_message )
                    this.EndGame( this.leadingTeam )
                    this.countdownEnabled = false
                }
                 else {
                    this.TEAM_KILLS_TO_WIN = this.leadingTeamScore + 1
                    const broadcast_killcount = 
                    {
                        killcount: this.TEAM_KILLS_TO_WIN,
                    }
                    CustomGameEventManager.Send_ServerToAllClients( "overtime_alert", broadcast_killcount )
                
                }
            }
        }
	
        if (GameRules.State_Get() == GameState.GAME_IN_PROGRESS) {
            //Spawn Gold Bags
            this.ThinkGoldDrop()
            this.overthrowSpawnItem.ThinkSpecialItemDrop()
        }
        return 1
    }

    public ThinkGoldDrop(){

    }


    public SpawnGold(): void{
        // this.spawnGold(); не работает, не видит при вызове spawnGold, видимо механика вызова такая
        const overboss = Entities.FindByName(undefined, "@overboss") as CDOTA_BaseNPC;
        if (overboss == undefined) return;
        const throwCoin = overboss.FindAbilityByName("dota_ability_throw_coin");
        const throwCoinLong = overboss.FindAbilityByName("dota_ability_throw_coin_long");

        if (throwCoinLong && RandomInt(1, 100) >80){
            overboss.CastAbilityNoTarget(throwCoinLong, -1);
        } else if (throwCoin){
            overboss.CastAbilityNoTarget(throwCoin, -1);
        } else { 
            this.SpawnGoldEntity(Vector(0, 0, 0));
        }
    }


    public SetTimer(): void{
        
    }

    public OnItemPickedUp(event : DotaItemPickedUpEvent) : void{
        const MONEY = GameConfig.COIN_MONEY
        const name = event.itemname;
        if(event.HeroEntityIndex == undefined) return;
        const item = EntIndexToHScript( event.ItemEntityIndex ) as CDOTA_Item
        const entity = EntIndexToHScript( event.HeroEntityIndex )
        if(entity == undefined) return;

        const baseNpc = entity as CDOTA_BaseNPC
	    const owner = entity.GetOwner()

        if(!owner.IsPlayerController()) return;
        switch (name) {
            case "item_bag_of_gold":{
                const cointype=RandomInt(1, 100);
                if(cointype<=GameConfig.FAKE_COIN_CHANCE){
                    const ent=PlayerResource.GetSelectedHeroEntity(owner.GetPlayerID())
                    if(ent!=undefined){
                        if (ent.GetGold()<MONEY*2){
                            PlayerResource.SpendGold(owner.GetPlayerID(), ent.GetGold(), 0)
                        }
                        else {
                            PlayerResource.SpendGold(owner.GetPlayerID(), MONEY*2, 0)
                        }
                        SendOverheadEventMessage( owner, OverheadAlert.GOLD, baseNpc, MONEY*-2, undefined )
                        EmitGlobalSound("Overthrow.Item.GoldStolen")
                    }
                    break;
                } else if(cointype>GameConfig.FAKE_COIN_CHANCE && cointype<=GameConfig.FAKE_COIN_CHANCE+GameConfig.BOMB_COIN_CHANCE) {
                    const ent=PlayerResource.GetSelectedHeroEntity(owner.GetPlayerID())
                    if(ent!=undefined){
                        ent.AddNewModifier(undefined, undefined, "modifier_stunned", { duration:1 })
                        ent.AddNewModifier(undefined, undefined, "modifier_rooted", { duration:1 })
                        ApplyDamage({
                        attacker: baseNpc,
                        victim: ent,
                        damage: (ent.GetMaxHealth()/100*10)+100,
                        damage_type: DamageTypes.PURE,
                        ability: undefined,
                        damage_flags: DamageFlag.NONE,
                        });
                        EmitGlobalSound("Overthrow.Item.GoldBoom")
                    }
                }
                else{
                    PlayerResource.ModifyGold(owner.GetPlayerID(), MONEY, true, 0)
                    SendOverheadEventMessage( owner, OverheadAlert.GOLD, baseNpc, MONEY, undefined ) // Звук + эффект деняк
                    break;
                }
            }
            case "item_treasure_chest":{
                this.overthrowSpawnItem.OnTreasureChestPickedUp(event)
                break;
            }
        }
        UTIL_Remove( item ) // otherwise it pollutes the player inventory

    }

    public SpawnGoldEntity(spawnPoint : any): void{
        EmitGlobalSound("Item.PickUpGemWorld")
        const newItem = CreateItem("item_bag_of_gold", undefined, undefined);
        
        const drop = CreateItemOnPositionForLaunch(spawnPoint, newItem);
        const dropRadius = RandomFloat(200, 800); 
        newItem?.LaunchLootInitialHeight(false, 0, 500, 0.75, spawnPoint + (RandomVector(dropRadius)))
        newItem?.SetContextThink("KillLoot", () => this.KillLoot( newItem, drop ), 20)
    }

    private KillLoot( item : CDOTA_Item, drop : CDOTA_Item_Physical ): number | undefined{
        if (drop.IsNull()) {
            return;
        }
        const nFXIndex = ParticleManager.CreateParticle( "particles/items2_fx/veil_of_discord.vpcf", ParticleAttachment.CUSTOMORIGIN, drop )
        ParticleManager.SetParticleControl( nFXIndex, 0, drop.GetOrigin() )
        ParticleManager.SetParticleControl( nFXIndex, 1, Vector( 35, 35, 25 ) )
        ParticleManager.ReleaseParticleIndex( nFXIndex )
        EmitGlobalSound("Item.PickUpWorld")

        UTIL_Remove( item )
        UTIL_Remove( drop )
    }

    EndGame( victoryTeam : number ) : void{
        const overBoss = Entities.FindByName( undefined, "@overboss" ) as CDOTA_BaseNPC
        if (overBoss !== undefined){
            const celebrate = overBoss.FindAbilityByName( 'dota_ability_celebrate' )
            if (celebrate !== undefined) {
                overBoss.CastAbilityNoTarget( celebrate, -1 ) // Анимация крысы после игры
            }
        }
        
        let tTeamScores = []
        for(let team = DOTA_TEAM_FIRST; team < DOTA_TEAM_COUNT; team++) {
            tTeamScores[team] = GetTeamHeroKills(team)
        }
        GameRules.SetPostGameTeamScores( tTeamScores )

        GameRules.SetGameWinner( victoryTeam )
    }
    
    //------------------------------------------------------------------------------
    // Event: BountyRunePickupFilter
    //------------------------------------------------------------------------------
    public BountyRunePickupFilter( filterTable : BountyRunePickupFilterEvent ) : boolean{
        filterTable.xp_bounty = 2*filterTable.xp_bounty
        filterTable.gold_bounty = 2*filterTable.gold_bounty
        return true
    }

    //------------------------------------------------------------------------------
    // Event: OnNpcGoalReached
    //------------------------------------------------------------------------------
    public OnNpcGoalReached( event : DotaNpcGoalReachedEvent){
        const npc = EntIndexToHScript( event.npc_entindex ) as  CDOTA_BaseNPC
        if (npc.GetUnitName() == "npc_dota_treasure_courier") {
            this.overthrowSpawnItem.TreasureDrop( npc )
        }
    }

    public ForceSpawnItem(){
        this.overthrowSpawnItem.ForceSpawnItem()
    }

    
}