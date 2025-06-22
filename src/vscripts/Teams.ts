import { ShuffledList } from "./Utility";



const team_colors = new Map<number, number[]>([
        [DotaTeam.GOODGUYS, [61, 210, 150]], // teal
        [DotaTeam.BADGUYS,  [243, 201, 9]],  // yellow
        [DotaTeam.CUSTOM_1, [197, 77, 168]], // pink
        [DotaTeam.CUSTOM_2, [255, 108, 0]], // orange
        [DotaTeam.CUSTOM_3, [52, 85, 255]], // blue
        [DotaTeam.CUSTOM_4, [101, 212, 19]], // green
        [DotaTeam.CUSTOM_5, [129, 83, 54]], // brown
        [DotaTeam.CUSTOM_6, [27, 192, 216]], // cyan
        [DotaTeam.CUSTOM_7, [199, 228, 13]], //lime
        [DotaTeam.CUSTOM_8, [140, 42, 244]], //purple
])

export  class TeamsSettings{

    public m_VictoryMessages = new Map<number, string>();
    public m_GatheredShuffledTeams: number[] = []
    public maxPlayersPerValidTeam: number = 1;
    constructor() {
        this.SettingTeams()

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
    }

    public SettingTeams(){
        this.HealthBarChange()



        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.GOODGUYS, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.BADGUYS, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_1, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_2, 1);    
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_3, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_4, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_5, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_6, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_7, 1);
        GameRules.SetCustomGameTeamMaxPlayers(DotaTeam.CUSTOM_8, 1);
    }

     // Хуйня какая-то, переделать!(для других карт плохо работет)
    public GatherAndRegisterValidTeams() : number[]{
        
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
        this.maxPlayersPerValidTeam = math.floor( 10 / numTeams )
        //print("GetMapName(): " + GetMapName())
        switch(GetMapName()){
            case "forest_solo":{
                this.maxPlayersPerValidTeam = 1
                break;
            }
            case "desert_duo":{
                this.maxPlayersPerValidTeam = 2
                break;
            }
            case "temple_quartet":{
                this.maxPlayersPerValidTeam = 4
                break;
            }
            case "desert_quintet":{
                this.maxPlayersPerValidTeam = 5
                break;
            }
            default:{
                this.maxPlayersPerValidTeam = 3
                break;
            }
        }

       // print("maxPlayersPerValidTeam = " + tostring(maxPlayersPerValidTeam) + " numteams = " + numTeams)
        this.m_GatheredShuffledTeams = ShuffledList( foundTeamsList )

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
            GameRules.SetCustomGameTeamMaxPlayers( this.m_GatheredShuffledTeams[i], this.maxPlayersPerValidTeam )
        }
        return this.m_GatheredShuffledTeams
    }



    public HealthBarChange() : void {
        for(let el of team_colors){
            const team = el[0]
            const color = el[1]
            SetTeamCustomHealthbarColor(team, color[0], color[1], color[2]);
        }

    }

    //Нахуя надо ?* 
    public UpdatePlayerColor( nPlayerID : PlayerID){
        const teamID = PlayerResource.GetTeam( nPlayerID )
        const color = ColorForTeam( teamID )
        if (!PlayerResource.HasSelectedHero( nPlayerID ) )
            return
        

        const hero = PlayerResource.GetSelectedHeroEntity( nPlayerID )
        if (hero == undefined)
            return
        
        PlayerResource.SetCustomPlayerColor(nPlayerID, color[0], color[1], color[2] )

    }



}
export function ColorForTeam( teamID : number ){
    let color = team_colors.get(teamID)
    if (color == undefined)
        color = [ 255, 255, 255 ] // default to white
    return color
}
export function AssignTeams(m_bFillWithBots : boolean){
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
        
    if (m_bFillWithBots) {
        GameRules.BotPopulate()
    }
}