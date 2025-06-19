import { ColorForTeam } from "./Teams";
import { AddVector } from "./Utility";



declare interface SpawnLocation{
    hSpawnLocation: CBaseEntity,
    path_track_name: string,
    world_effects_name: string,
    hDrop: CDOTA_Item_Physical | undefined,
    hItemDestinationRevealer: CDOTA_BaseNPC | undefined,
    nItemDestinationParticles: ParticleID | undefined,
}

export class Overthrow {


    public KILLS_TO_WIN_SINGLES = 20
    public KILLS_TO_WIN_DUOS = 30
    public KILLS_TO_WIN_TRIOS = 40
    public KILLS_TO_WIN_QUADS = 50
    public KILLS_TO_WIN_QUINTS = 60

    // Переделать НАХУ в конфиги хуенфиги
    public countdownEnabled = false;
    public isGameTied = true;
    public TEAM_KILLS_TO_WIN = 50;
    public leadingTeamScore = 0;
    public leadingTeam = -1;
    public m_VictoryMessages = new Map<number, string>();
    public runnerupTeam = -1;
    public runnerupTeamScore = -1;
    public m_GatheredShuffledTeams: any[] = [];
    public spawncamps = new Map<string, any>(); // Похорошему вместо any написать новый тип
    public m_bFillWithBots = true;
    public _fPreGameStartTime: number = 10;
    public numSpawnCamps = 5;

    tier1ItemBucket: string[] = []
	tier2ItemBucket: string[] = []
	tier3ItemBucket: string[] = []
	tier4ItemBucket: string[] = []
	tier5ItemBucket: string[] = []
    nNextSpawnItemNumber: number = 1;
    nMaxItemSpawns: number = 30;
    spawnTime: number = 60;
    warnTime: number = 7;
    hasWarnedSpawn: boolean = false;
    itemSpawnLocations: SpawnLocation[] = [];
    itemSpawnLocationsInUse: SpawnLocation[]  = [];
    itemSpawnLocation = Entities.FindByName( undefined, "greevil" )
    itemSpawnIndex: number = 1;
    hCurrentItemSpawnLocation: SpawnLocation | undefined;
    hItemDestinationRevealer: CDOTA_BaseNPC | undefined;
    nItemDestinationParticles: ParticleID | undefined;


    constructor(){
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

        this.SetUpFountains()  


        this.CustomSpawnCamps()
	

        GameRules.GetGameModeEntity().SetExecuteOrderFilter( (event) => this.ExecuteOrderFilter(event), this)
    }

    public ShuffledList( orig_list : unknown[] ){
        const list = orig_list.slice() // копируем список
        const result: unknown[] = [] // результат
        const count = list.length
        let t : string = ""
        //list.forEach( (v, i) => print("ShuffledList: list.foreach: value: " + v + " index " + i))
        for(const i of $range(0, count-1)) { // [0, count-1] включительно короче
            const pick = RandomInt( 0, list.length-1 )
            result.push(list[ pick ])
            t += list[ pick ] + ","
            list.splice(pick, 1)
        }
        //print( "Picked teams: length = " + result.length + " elements: " + t )
        return result
    }
    // Хуйня какая-то, переделать!(для других карт хз как работет)
    public GatherAndRegisterValidTeams(){
        
    //print( "GatherValidTeams:" )

        const foundTeams = new Set<number>()// список ключ - id команды
        for(const playerStart of Entities.FindAllByClassname( "info_player_start_dota")){
            foundTeams.add(playerStart.GetTeamNumber())
            //print("FoundTeams adding " + playerStart.GetTeamNumber().toString() + " " + GetTeamName(playerStart.GetTeam()))
        }
        //print(foundTeams.length)

        ///print( "GatherValidTeams - Found spawns for(a total of " +  numTeams  + " teams" )

        const foundTeamsList: number[] = []
        print( this.m_VictoryMessages.get(0), this.m_VictoryMessages.get(1))
        foundTeams.forEach( (v,i,o) => {
            //если команда с таким id существует (team), как признак у нее есть victory message
            if(this.m_VictoryMessages.get(v)!=undefined){
                table.insert( foundTeamsList, v)
               // print( "FoundTeams.ForEach: " + tostring(v) + " " + this.m_VictoryMessages.get(v))
            }

        })
        //print("FoundTeams.length = " + tostring(foundTeamsList.length) )

        /*
        for(const [t, _] of pairs( foundTeams ) ){
            table.insert( foundTeamsList, t )
            print("FoundTeamList creation: Team Adding  " + t.toString() + (this.m_VictoryMessages[t]!=undefined?this.m_VictoryMessages[t]:"victory message undefined"))
        }
        */
        let numTeams = foundTeamsList.length
        //print("FoundTeamList.length = " + foundTeamsList.length)

        if (numTeams == 0) {
           // print( "GatherValidTeams - NO team spawns detected, defaulting to GOOD/BAD" )
            table.insert( foundTeamsList, DotaTeam.GOODGUYS )
            table.insert( foundTeamsList, DotaTeam.BADGUYS )
            numTeams = 2
        }

        const maxPlayersPerValidTeam = math.floor( 10 / numTeams )
       // print("maxPlayersPerValidTeam = " + tostring(maxPlayersPerValidTeam) + " numteams = " + numTeams)
        this.m_GatheredShuffledTeams = this.ShuffledList( foundTeamsList )

        /*
        print( "Final shuffled team list:" )
        for (const [_, team] of pairs( this.m_GatheredShuffledTeams )) {
            print( " - " + team + " "  + GetTeamName( team ))
        } 
        */

        //print( "Setting up teams:" )

        for(const team  of $range(0, (DOTA_TEAM_COUNT-1) )){
            GameRules.SetCustomGameTeamMaxPlayers( team, 0  )
        }
        for(let i = 0; i < numTeams; i++) {
            //print( " - " + this.m_GatheredShuffledTeams[i] + "  " + GetTeamName( this.m_GatheredShuffledTeams[i] ) + " max players = " + tostring(maxPlayersPerValidTeam) )
            GameRules.SetCustomGameTeamMaxPlayers( this.m_GatheredShuffledTeams[i], maxPlayersPerValidTeam )
        }
    }

    public AssignTeams(){
        //print( "Assigning teams" )
        const vecTeamValid : boolean[] = []
        const vecTeamNeededPlayers : number[] = []
        for (let nTeam = 0; nTeam < DOTA_TEAM_COUNT; nTeam++) {
            const nMax = GameRules.GetCustomGameTeamMaxPlayers( nTeam )
            if (nMax > 0) {
                //print( "Found team " .. nTeam .. " with max players " .. nMax )
                vecTeamNeededPlayers[ nTeam ] = nMax
                vecTeamValid[ nTeam ] = true
            } else {
                vecTeamValid[ nTeam ] = false
            }
        }

        //loop 1: count up players on each team
        const hPlayers : PlayerID[]= []
        for (let nPlayerID = 0; nPlayerID < DOTA_MAX_TEAM_PLAYERS; nPlayerID++) {
            if (PlayerResource.IsValidPlayerID( nPlayerID )) {
                let nTeam = PlayerResource.GetTeam( nPlayerID )
                if (!vecTeamValid[ nTeam ]) {
                    nTeam = PlayerResource.GetCustomTeamAssignment( nPlayerID )
                }
                //print( "Found player " .. nPlayerID .. " on team " .. nTeam )
                if (vecTeamValid[ nTeam ]) {
                    vecTeamNeededPlayers[ nTeam ] = vecTeamNeededPlayers[ nTeam ] - 1
                } else {
                    hPlayers.push( nPlayerID )
                }
            }
        }

        //loop 2: assign players. For each player who is on an invalid team,
        //find the team that has the highest number of needed players
        //&& assign the player to that team
        hPlayers.forEach( (nPlayerID, _) =>  {
            //print( "Finding team for player " .. nPlayerID )
            let nTeamNumber = -1
            let nHighest = 0
            for (let nTeam = 0; nTeam < DOTA_TEAM_COUNT; nTeam++) {
                if (vecTeamValid[ nTeam ]) {
                    const nVal = vecTeamNeededPlayers[ nTeam ]
                    if (nVal > nHighest) {
                        //print( "found team " .. nTeam .. " with needed " .. nVal .. " but highest was only " .. nHighest )
                        nHighest = nVal
                        nTeamNumber = nTeam
                    }
                }
            }
            if (nTeamNumber > 0) {
                PlayerResource.SetCustomTeamAssignment( nPlayerID , nTeamNumber )
                vecTeamNeededPlayers[ nTeamNumber ] = vecTeamNeededPlayers[ nTeamNumber ] - 1
            }
        })
            
        if (this.m_bFillWithBots) {
            GameRules.BotPopulate()
        }
    }
    private SetUpFountains(): void{

        LinkLuaModifier( "modifier_fountain_aura_lua", "modifier_fountain_aura_lua.lua", LuaModifierMotionType.NONE)
        LinkLuaModifier( "modifier_fountain_aura_effect_lua", "modifier_fountain_aura_effect_lua.lua", LuaModifierMotionType.NONE )

        const fountainEntities = Entities.FindAllByClassname( "ent_dota_fountain")
        for (const fountainEnt  of fountainEntities ) {
            //print("fountain unit " .. tostring( fountainEnt ) )

            (fountainEnt as CDOTA_BaseNPC).AddNewModifier( fountainEnt as CDOTA_BaseNPC, undefined, "modifier_fountain_aura_lua", {} )
        }
    }

//////---------------------------------------------------------------------
// Event: Game state change handler
//-------------------------------------------------------------------------
    public OnGameRulesStateChange(){
        const nNewState = GameRules.State_Get()
        //print( "OnGameRulesStateChange: " .. nNewState )

        if (nNewState == GameState.HERO_SELECTION ) {
            this.AssignTeams()
        } else if (nNewState == GameState.PRE_GAME) {
            const numberOfPlayers = PlayerResource.GetPlayerCount()
            if ( numberOfPlayers > 7 ) {
               //this.TEAM_KILLS_TO_WIN = 25
                nCOUNTDOWNTIMER = 901
            } else if (  numberOfPlayers > 4 || numberOfPlayers <= 7 ) {
               //this.TEAM_KILLS_TO_WIN = 20
                nCOUNTDOWNTIMER = 721
            } else {
               //this.TEAM_KILLS_TO_WIN = 15
                nCOUNTDOWNTIMER = 601
            }

            if (GetMapName() == "forest_solo" ) {
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_SINGLES
            } else if (  GetMapName() == "desert_duo" ) {
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_DUOS
            } else if (  GetMapName() == "temple_quartet" ) {
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_QUADS
            } else if (  GetMapName() == "desert_quintet" ) {
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_QUINTS
            } else {
                this.TEAM_KILLS_TO_WIN = this.KILLS_TO_WIN_TRIOS
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
            this.countdownEnabled = true
            CustomGameEventManager.Send_ServerToAllClients( "show_timer", {} as never )
            DoEntFire( "center_experience_ring_particles", "Start", "0", 0, this, this  )

            GameRules.GetGameModeEntity().SetAnnouncerDisabled( true )// Disable the normal announcer at game start
        }
    }
    //------------------------------------------------------------------------------
    // Event: BountyRunePickupFilter
    //------------------------------------------------------------------------------
    public BountyRunePickupFilter( filterTable : BountyRunePickupFilterEvent ) : boolean{
        filterTable.xp_bounty = 2*filterTable.xp_bounty
        filterTable.gold_bounty = 2*filterTable.gold_bounty
        return true
    }

    public ExecuteOrderFilter( filterTable : ExecuteOrderFilterEvent ) : boolean{
	/*
	for k, v in pairs( filterTable ) {
		print("EO: " .. k .. " " .. tostring(v) )
	}
	*/

        const orderType = filterTable.order_type 
        if ( orderType != UnitOrder.PICKUP_ITEM || filterTable.issuer_player_id_const == -1 ){
            return true
        }
        else {
            const item = EntIndexToHScript(filterTable.entindex_target) as CDOTA_Item_Physical
            if (item == undefined) {
                return true
            }
            const pickedItem = item.GetContainedItem()

            //print(pickedItem.GetAbilityName())
            if (pickedItem == undefined) {
                return true
            }
            switch(pickedItem.GetAbilityName()){
                case "item_bag_of_gold":{
                    const hero = EntIndexToHScript(filterTable.units["0"]) as CDOTA_BaseNPC_Hero
                    if(hero == undefined || !hero.IsRealHero())
                        return false;
                    break;
                }
                case "item_treasure_chest":{
                    const player = PlayerResource.GetPlayer(filterTable.issuer_player_id_const)
                    if(player==undefined){
                        return true
                    }
                    const hero = player.GetAssignedHero()
                    
                    // determine if we can scoop the neutral or not
                    // we need either a free backpack slot or a free neutral item slot
                    let bAllowPickup = false
                    const hNeutralItem = hero.GetItemInSlot(InventorySlot.NEUTRAL_SLOT)
                    if (hNeutralItem == undefined) {
                        bAllowPickup = true
                        //print( '^^^Empty neutral slot!' )
                    }
                    else {
                        let numBackpackItems = 0
                        for (let nItemSlot = 0; nItemSlot < DOTA_ITEM_INVENTORY_SIZE; nItemSlot++) {
                            const hItem = hero.GetItemInSlot( nItemSlot ) // index zero based
                            if (hItem && hItem.IsInBackpack()) {
                                numBackpackItems = numBackpackItems + 1
                            }
                        }
                        //print( '^^^Backpack slots = ' .. numBackpackItems )
                        if (numBackpackItems < 3) {
                            bAllowPickup = true
                        }
                    }		

                    if (bAllowPickup) {
                        //print("inventory has space")
                        return true
                    }
                    else {
                        //print("Moving to target instead")
                        const position = item.GetAbsOrigin()
                        filterTable.position_x = position.x
                        filterTable.position_y = position.y
                        filterTable.position_z = position.z
                        filterTable.order_type = UnitOrder.MOVE_TO_POSITION 
                        return true
                    }
                    break;
                }
            }
        }
        return true
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
        const sortedTeams: any[] = []
        for (const [_, team] of pairs( this.m_GatheredShuffledTeams )) {
            table.insert( sortedTeams, { teamID: team, teamScore: GetTeamHeroKills( team ) } )
        }

        // reverse-sort by score
        table.sort( sortedTeams, (a,b) => { return ( a.teamScore > b.teamScore ) } )

        for (const [_, t] of pairs( sortedTeams ) ){
            const clr = ColorForTeam( t.teamID )

            // Scaleform UI Scoreboard
            const score = 
            {
                team_id: t.teamID,
                team_score: t.teamScore
            }
            CustomGameEventManager.Send_ServerToAllClients( "score_board", score )
        }
        
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
            this.ThinkSpecialItemDrop()
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

    // Добавить константу в конфиг
    public OnItemPickedUp(event : DotaItemPickedUpEvent) : void{
        const MONEY = 200
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
                PlayerResource.ModifyGold(owner.GetPlayerID(), MONEY, true, 0)
                SendOverheadEventMessage( owner, OverheadAlert.GOLD, baseNpc, MONEY, undefined ) // Звук + эффект деняк
                break;
            }
            case "item_treasure_chest":{
                const hContainer = item.GetContainer()
                const func = () => {
                this.itemSpawnLocationsInUse.forEach((v,k)=>{
                    if (v.hDrop == hContainer){
                        //print( '^^^DROP CONTAINER!' )
                        if (v.hItemDestinationRevealer != undefined) {
                            v.hItemDestinationRevealer.RemoveSelf()
                            if(v.nItemDestinationParticles != undefined){   
                                ParticleManager.DestroyParticle( v.nItemDestinationParticles, false )
                            }
                            DoEntFire( v.world_effects_name, "Stop", "0", 0, this, this )
                        }
                        this.itemSpawnLocations.push(v)
                        this.itemSpawnLocationsInUse.splice(k, 1)
                        return
                    }
                })
                }
                func()
                
                
                this.SpecialItemAdd( event )// unimplemented
    
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
    PickRandomShuffle<Type>( reference_list : Type[], bucket : Type[]) : Type{
        if ( bucket.length == 0 ) {
            // ran out of options, refill the bucket from the reference
            reference_list.forEach((v,k) => bucket[k] = v)
        }

        // pick a value from the bucket and remove it
        const pick_index = RandomInt( 0, bucket.length-1 )
        const result = bucket[ pick_index ]
        bucket.splice(pick_index, 1)
        return result
    }
    SpecialItemAdd( event : DotaItemPickedUpEvent){
        const item = EntIndexToHScript( event.ItemEntityIndex )
        const owner = EntIndexToHScript( event.HeroEntityIndex ) as CDOTA_BaseNPC_Hero
        if(owner == undefined){
            print("SpecialItemAdd owner undefined")
            return
        }
        const hero = owner.GetClassname()
        const ownerTeam = owner.GetTeamNumber()
        const sortedTeams: any[] = []
        for (const [_, team] of  this.m_GatheredShuffledTeams ) {
            sortedTeams.push({ teamID: team, teamScore: GetTeamHeroKills( team ) })
        }

        //reverse-sort by score
        sortedTeams.sort((a,b) => b-a)
        const leader = sortedTeams[0].teamID
        const lastPlace = sortedTeams[sortedTeams.length].teamID

        const tableindex = 0

        const tier1 = 
        [
            "item_keen_optic",				//
            //"item_ocean_heart",			//!no water! 
            "item_broom_handle",			//
            "item_trusty_shovel",			//
            "item_arcane_ring",				//
            "item_chipped_vest",			//
            "item_possessed_mask",			//
            "item_mysterious_hat",			//fairy's trinket
            "item_unstable_wand",			//pig pole
            "item_pogo_stick",				//tumbler's toy
        ]

        const tier2 =
        [
            "item_ring_of_aquila",			//
            "item_nether_shawl",			//
            "item_dragon_scale",			//
            "item_pupils_gift",				//
            "item_vambrace",				//
            "item_misericorde",				//brigand's blade
            "item_grove_bow",				//
            //"item_philosophers_stone",	//!game is not long enough for bonus gold to matter!
            "item_essence_ring",			//
            "item_paintball",				//fae grenade
            "item_bullwhip",				//
            "item_quicksilver_amulet",		//
        ]

        const tier3 =
        [
            "item_quickening_charm",		//
            "item_black_powder_bag",		//blast rig
            "item_spider_legs",				//
            "item_paladin_sword",			//
            "item_titan_sliver",			//
            "item_mind_breaker",			//
            "item_enchanted_quiver",		//
            "item_elven_tunic",				//
            "item_cloak_of_flames",			//
            "item_ceremonial_robe",			//
            "item_psychic_headband",		//
        ]

        const tier4 =
        [
            "item_timeless_relic",			//
            "item_spell_prism",				//
            "item_ascetic_cap",				//
            "item_heavy_blade",				//witchbane
            "item_flicker",					//
            "item_ninja_gear",				//
            "item_the_leveller",			//
            "item_spy_gadget",				//telescope
            "item_trickster_cloak",			//
            "item_stormcrafter",			//
            "item_penta_edged_sword",		//
        ]

        const tier5 =
        [
            "item_force_boots",				//
            "item_desolator_2",				//
            "item_seer_stone",				//
            "item_mirror_shield",			//
            "item_apex",					//
            "item_demonicon",				//
            "item_fallen_sky",				//
            "item_force_field",				//arcanist's armor
            "item_pirate_hat",				//
            "item_ex_machina",				//
            "item_giants_ring",				//
            "item_book_of_shadows",			//
        ]

        const t1 = this.PickRandomShuffle( tier1, this.tier1ItemBucket )
        const t2 = this.PickRandomShuffle( tier2, this.tier2ItemBucket )
        const t3 = this.PickRandomShuffle( tier3, this.tier3ItemBucket )
        const t4 = this.PickRandomShuffle( tier4, this.tier4ItemBucket )
        const t5 = this.PickRandomShuffle( tier5, this.tier5ItemBucket )
        
        
        
        
        
        let spawnedItem = ""

        //pick the item we're giving them
        const nLeaderKills = GetTeamHeroKills( leader )

        if (nLeaderKills <= 5) {
            spawnedItem = t1
        }
        else if (nLeaderKills > 5 && nLeaderKills <= 13) {
            if (ownerTeam == leader && ( this.leadingTeamScore - this.runnerupTeamScore > 3 )) {
                spawnedItem = t1
            }
            else if (ownerTeam == lastPlace) {
                spawnedItem = t3
            }
            else{
                spawnedItem = t2
            }
        }
        else if (nLeaderKills > 13 && nLeaderKills <= 21) {
            if (ownerTeam == leader && ( this.leadingTeamScore - this.runnerupTeamScore > 3 )) {
                spawnedItem = t2
            }
            else if (ownerTeam == lastPlace) {
                spawnedItem = t4
            }
            else{
                spawnedItem = t3
            }
        }
        else if (nLeaderKills > 21) {
            if (ownerTeam == leader && ( this.leadingTeamScore - this.runnerupTeamScore > 3 )) {
                spawnedItem = t3
            }
            else if (ownerTeam == lastPlace) {
                spawnedItem = t5
            }
            else{
                spawnedItem = t4
            }
        }

        //add the item to the inventory && broadcast
        owner.AddItemByName( spawnedItem )
        EmitGlobalSound("Overthrow.Item.Claimed")
        const overthrow_item_drop =
        {
            hero_id: hero,
            dropped_item: spawnedItem
        }
        CustomGameEventManager.Send_ServerToAllClients( "overthrow_item_drop", overthrow_item_drop )
    }

    ThinkSpecialItemDrop(){
        //Stop spawning items after the maximum amount
        if (this.nNextSpawnItemNumber >= this.nMaxItemSpawns) {
            return
        }
        //Don't spawn if the game is about to }
        if (nCOUNTDOWNTIMER < 20) {
            return
        }
        const t = GameRules.GetDOTATime( false, false )
        const tSpawn = ( this.spawnTime * this.nNextSpawnItemNumber )
        const tWarn = tSpawn - this.warnTime
        
        if (!this.hasWarnedSpawn && t >= tWarn) {
            //warn the item is about to spawn
            //we might fail to reserve a spot in which case we'll just skip && move on to the next spawn
            if (!this.WarnItem()) {
                this.nNextSpawnItemNumber = this.nNextSpawnItemNumber + 1
                return
            }
            this.hasWarnedSpawn = true
        }
        else if (t >= tSpawn) {
            //spawn the item
            this.SpawnItem()
            this.nNextSpawnItemNumber = this.nNextSpawnItemNumber + 1
            this.hasWarnedSpawn = false
        }
    }

    PlanNextSpawn(){
        print("PlanNextSpawn")
        if (this.itemSpawnLocations == undefined || this.itemSpawnLocations.length ==0) {
            this.itemSpawnLocations = []
            this.itemSpawnLocationsInUse = []
            let nMaxSpawns = 8
            if (GetMapName() == "desert_quintet") {
                print("map is desert_quintet")
                nMaxSpawns = 6
            }
            else if (GetMapName() == "temple_quartet") {
                print("map is temple_quartet")
                nMaxSpawns = 4
            }

            for (let i=0; i < nMaxSpawns; i++) {
                const spawnName = "item_spawn_" + i
                print( '^^^SEARCHING FOR SPAWN POINT NAMED = ' + spawnName )
                const hSpawnLocation = Entities.FindByName( undefined, spawnName )
                if (hSpawnLocation == undefined ){
                    print( '^^^MISSING SPAWN LOCATION = ' + spawnName )
                }
                else{
                    const newSpawnLocation =
                    {
                        hSpawnLocation: hSpawnLocation,
                        path_track_name: "item_spawn_" + i,
                        world_effects_name: "item_spawn_particle_" + i,
                        hDrop: undefined,
                        hItemDestinationRevealer: undefined,
                        nItemDestinationParticles: undefined
                    }
                    this.itemSpawnLocations[i] = newSpawnLocation
                }
            }
        }
        

        if (this.itemSpawnLocations.length <= 0) {
            print( 'RAN OUT OF SPAWN LOCATIONS!' )
            return false
        }

        const r = RandomInt( 0, this.itemSpawnLocations.length-1 )
        const spawnPoint = this.itemSpawnLocations[r]
        this.itemSpawnLocations.splice(r, 1)
        this.itemSpawnLocationsInUse.push( spawnPoint )

        this.hCurrentItemSpawnLocation = spawnPoint

        return true
    }

    WarnItem(){
        print("WarnItem")
        //find the spawn point
        if (!this.PlanNextSpawn()) {
            return false
        }
        if(this.hCurrentItemSpawnLocation == undefined){
            print("WarnItem: this.hCurrentItemSpawnLocation undefined")
            return
        }
        const spawnLocation = this.hCurrentItemSpawnLocation.hSpawnLocation.GetAbsOrigin();

        //notify everyone
        CustomGameEventManager.Send_ServerToAllClients( "item_will_spawn", { spawn_location:  spawnLocation } )
        EmitGlobalSound( "Overthrow.Item.Warning" )
        
        //fire the destination particles
        DoEntFire( this.hCurrentItemSpawnLocation.world_effects_name, "Start", "0", 0, this, this )

        //Give vision to the spawn area (unit is on goodguys, but shared vision)
        this.hItemDestinationRevealer = CreateUnitByName( "npc_vision_revealer", spawnLocation, false, undefined, undefined, DotaTeam.GOODGUYS )
        this.nItemDestinationParticles = ParticleManager.CreateParticle( "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", ParticleAttachment.ABSORIGIN, this.hItemDestinationRevealer )
        ParticleManager.SetParticleControlEnt( this.nItemDestinationParticles, ParticleAttachment.ABSORIGIN, this.hItemDestinationRevealer, ParticleAttachment.ABSORIGIN, "attach_origin", this.hItemDestinationRevealer.GetAbsOrigin(), true )

        return true
    }

    SpawnItem(){
        print("SpawnItem")
        //notify everyone
        CustomGameEventManager.Send_ServerToAllClients( "item_has_spawned", {})
        EmitGlobalSound( "Overthrow.Item.Spawn" )

        //spawn the item
        const startLocation = Vector( 0, 0, 700 )
        const treasureCourier = CreateUnitByName( "npc_dota_treasure_courier" , startLocation, true, undefined, undefined, DotaTeam.NEUTRALS )
        const treasureAbility = treasureCourier.FindAbilityByName( "dota_ability_treasure_courier" )
        if(treasureAbility == undefined){
            print("treasureAbility undefined")
            return
        }
        treasureAbility.SetLevel( 1 )
    //print ("Spawning Treasure")
        if(this.hCurrentItemSpawnLocation == undefined){
            print("SpawnItem: this.hCurrentItemSpawnLocation undefined")
            return
        }
        treasureCourier.SetInitialGoalEntity( this.hCurrentItemSpawnLocation.hSpawnLocation )
    //const particleTreasure = ParticleManager.CreateParticle( "particles/items_fx/black_king_bar_avatar.vpcf", PATTACH_ABSORIGIN, treasureCourier )
        //ParticleManager.SetParticleControlEnt( particleTreasure, PATTACH_ABSORIGIN, treasureCourier, PATTACH_ABSORIGIN, "attach_origin", treasureCourier:GetAbsOrigin(), true )
        //treasureCourier:Attribute_SetIntValue( "particleID", particleTreasure )
    }

    ForceSpawnItem(){
        if (this.WarnItem()) {
            this.SpawnItem()
        }
    }

    KnockBackFromTreasure( center : Vector, radius : number, knockback_duration : number, knockback_distance : number, knockback_height : number ){
        const targetType = bit.bor( UnitTargetType.CREEP, UnitTargetType.HERO )
        const knockBackUnits = FindUnitsInRadius( DotaTeam.NOTEAM, center, undefined, radius, UnitTargetTeam.BOTH , targetType, UnitTargetFlags.NONE, FindOrder.ANY, false )
    
        const modifierKnockback =
        {
            center_x: center.x,
            center_y: center.y,
            center_z: center.z,
            duration: knockback_duration,
            knockback_duration: knockback_duration,
            knockback_distance: knockback_distance,
            knockback_height: knockback_height,
        }
        knockBackUnits.forEach((unit) => unit.AddNewModifier(unit, undefined, "modifier_knockback", modifierKnockback ))
    }

    TreasureDrop( treasureCourier : CDOTA_BaseNPC) : void{
        print("TreasureDrop")
        //Destroy vision revealer
        this.hItemDestinationRevealer?.RemoveSelf()
        if(this.nItemDestinationParticles != undefined){
            ParticleManager.DestroyParticle( this.nItemDestinationParticles, false )
        }

        //Create the death effect for the courier
        const treasureCourierInitialGoalEntity = treasureCourier.GetInitialGoalEntity() 
        if(treasureCourierInitialGoalEntity == undefined){
            print("TreasureDrop treasureCourier.GetInitialGoalEntity() undefined")
            return
        }
        const spawnPoint = treasureCourierInitialGoalEntity.GetAbsOrigin()
        spawnPoint.z = 400
        const fxPoint = treasureCourierInitialGoalEntity.GetAbsOrigin()
        fxPoint.z = 400
        const deathEffects = ParticleManager.CreateParticle( "particles/treasure_courier_death.vpcf", ParticleAttachment.CUSTOMORIGIN, undefined)
        ParticleManager.SetParticleControl( deathEffects, 0, fxPoint )
        ParticleManager.SetParticleControlOrientation( deathEffects, 0, treasureCourier.GetForwardVector(), treasureCourier.GetRightVector(), treasureCourier.GetUpVector() )
        EmitGlobalSound( "lockjaw_Courier.Impact" )
        EmitGlobalSound( "lockjaw_Courier.gold_big" )

        //Spawn the treasure chest at the selected item spawn location
        const newItem = CreateItem( "item_treasure_chest", undefined, undefined )
        if(newItem == undefined){
            print("TreasureDrop undefined")
            return
        }
        const drop = CreateItemOnPositionForLaunch( spawnPoint, newItem )
        drop.SetForwardVector( treasureCourier.GetRightVector() ) //oriented differently
        newItem.LaunchLootInitialHeight( false, 0, 50, 0.25, spawnPoint )

        if(this.hCurrentItemSpawnLocation == undefined){
            print("TreasureDrop: this.hCurrentItemSpawnLocation undefined")
            return
        }

        this.hCurrentItemSpawnLocation.hDrop = drop

        print( '^^^ITEM SPAWN LOCATIONS' )
        let temp = ""
        //this.itemSpawnLocations.forEach((v)=>temp+=v.)
        print(this.itemSpawnLocations)
        //PrintTable( this.itemSpawnLocations )
        print( '^^^ITEM SPAWN LOCATIONS IN USE' )
        //PrintTable( this.itemSpawnLocationsInUse )

        //Stop the particle effect
        DoEntFire( "item_spawn_particle_" + this.itemSpawnIndex, "stopplayendcap", "0", 0, this, this )

        //Knock people back from the treasure
        this.KnockBackFromTreasure( spawnPoint, 375, 0.25, 400.1, 100 )
            
        //Destroy the courier
        UTIL_Remove( treasureCourier )

        //create the minimap/revealer for the treasure now that it's on the ground
        //this one is attached to the table of data for the spawn location so we can clean it up when the treasure is picked up
        this.hCurrentItemSpawnLocation.hItemDestinationRevealer = CreateUnitByName( "npc_treasure_revealer", this.hCurrentItemSpawnLocation.hSpawnLocation.GetAbsOrigin(), false, undefined, undefined, DotaTeam.GOODGUYS )
        this.hCurrentItemSpawnLocation.nItemDestinationParticles = ParticleManager.CreateParticle( "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", ParticleAttachment.ABSORIGIN, this.hCurrentItemSpawnLocation.hItemDestinationRevealer )
        ParticleManager.SetParticleControlEnt( this.hCurrentItemSpawnLocation.nItemDestinationParticles, ParticleAttachment.ABSORIGIN, this.hCurrentItemSpawnLocation.hItemDestinationRevealer, ParticleAttachment.ABSORIGIN, "attach_origin", this.hCurrentItemSpawnLocation.hItemDestinationRevealer.GetAbsOrigin(), true )
    }
}