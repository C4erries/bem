


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
    constructor() {
        this.SettingTeams()
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