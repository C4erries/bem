import { ColorForTeam } from "./Teams";
import { AddVector } from "./Utility";




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

        GameRules.GetGameModeEntity().SetExecuteOrderFilter( (event) => this.ExecuteOrderFilter(event), this)
    }
    public shallowcopy<Type>(orig : Type) : Type | LuaTable{
        const orig_type = type(orig)
        let copy
        if (orig_type == 'table'){
            let copy = new LuaTable()
            for (const [orig_key, orig_value] of pairs(orig)) {
                copy.set(orig_key, orig_value);
            }
            return copy
        } else { // number, string, boolean, etc
            copy = orig
        }
        return copy
    }

    public tableToList(luaTable: LuaTable) : any[] {
        const list: any[] = []
        for (const [_, v] of pairs(luaTable)) {
            table.insert(list, v)
        }
        return list
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
        //and assign the player to that team
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

//-------------------------------------------------------------------------
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
            if (pickedItem.GetAbilityName() == "item_treasure_chest") {
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
        }
        }
        return true
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
            this.CountdownTimer()
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
                } else {{
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
    public ThinkSpecialItemDrop() : void{

    }

    public ForceSpawnItem(): void{

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
                /*
                for k,v in pairs ( this.itemSpawnLocationsInUse ) ){
                    if v.hDrop == hContainer {
                        //print( '^^^DROP CONTAINER!' )
                        if v.hItemDestinationRevealer {
                            v.hItemDestinationRevealer:RemoveSelf()
                            ParticleManager:DestroyParticle( v.nItemDestinationParticles, false )
                            DoEntFire( v.world_effects_name, "Stop", "0", 0, this, this )
                        }
                        
                        table.insert( this.itemSpawnLocations, v )
                        table.remove( this.itemSpawnLocationsInUse, k )
                        break
                    }
                }
                */
                
                this.SpecialItemAdd( event )// unimplemented
    
                break;
            }
        }
        UTIL_Remove( item ) // otherwise it pollutes the player inventory

    }

    //unimplemented
    public SpecialItemAdd( event : DotaItemPickedUpEvent ): void{ 

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
}