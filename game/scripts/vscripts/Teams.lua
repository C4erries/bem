local ____lualib = require("lualib_bundle")
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__Class = ____lualib.__TS__Class
local Set = ____lualib.Set
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 5,["12"] = 1,["13"] = 1,["14"] = 173,["15"] = 174,["16"] = 175,["17"] = 176,["19"] = 177,["20"] = 173,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 5,["26"] = 5,["27"] = 5,["28"] = 5,["29"] = 5,["30"] = 5,["31"] = 5,["32"] = 5,["33"] = 18,["34"] = 18,["35"] = 18,["37"] = 20,["38"] = 21,["39"] = 22,["40"] = 24,["41"] = 26,["42"] = 27,["43"] = 28,["44"] = 29,["45"] = 30,["46"] = 31,["47"] = 32,["48"] = 33,["49"] = 34,["50"] = 35,["51"] = 23,["52"] = 38,["53"] = 39,["54"] = 43,["55"] = 44,["56"] = 45,["57"] = 46,["58"] = 47,["59"] = 48,["60"] = 49,["61"] = 50,["62"] = 51,["63"] = 52,["64"] = 38,["65"] = 56,["66"] = 60,["67"] = 61,["68"] = 62,["70"] = 69,["71"] = 70,["72"] = 70,["73"] = 70,["74"] = 70,["75"] = 71,["76"] = 73,["77"] = 74,["79"] = 71,["80"] = 87,["81"] = 90,["82"] = 92,["83"] = 93,["84"] = 94,["86"] = 96,["88"] = 98,["89"] = 99,["92"] = 100,["96"] = 103,["99"] = 104,["103"] = 107,["106"] = 108,["110"] = 111,["113"] = 112,["119"] = 116,["124"] = 122,["125"] = 133,["126"] = 134,["129"] = 136,["130"] = 136,["131"] = 138,["132"] = 136,["135"] = 140,["136"] = 56,["137"] = 145,["138"] = 146,["139"] = 147,["140"] = 148,["141"] = 149,["143"] = 145,["144"] = 155,["145"] = 156,["146"] = 157,["147"] = 158,["150"] = 162,["151"] = 163,["154"] = 166,["155"] = 155,["156"] = 179,["157"] = 181,["158"] = 182,["160"] = 183,["161"] = 183,["162"] = 184,["163"] = 185,["164"] = 187,["165"] = 188,["167"] = 190,["169"] = 183,["172"] = 195,["174"] = 196,["175"] = 196,["176"] = 197,["177"] = 198,["178"] = 199,["179"] = 200,["181"] = 203,["182"] = 204,["184"] = 206,["187"] = 196,["190"] = 214,["191"] = 214,["192"] = 214,["193"] = 216,["194"] = 217,["196"] = 218,["197"] = 218,["198"] = 219,["199"] = 220,["200"] = 221,["201"] = 223,["202"] = 224,["205"] = 218,["208"] = 228,["209"] = 229,["210"] = 230,["212"] = 214,["213"] = 214,["214"] = 234,["215"] = 235,["217"] = 179});
local ____exports = {}
local team_colors
local ____Utility = require("Utility")
local ShuffledList = ____Utility.ShuffledList
function ____exports.ColorForTeam(self, teamID)
    local color = team_colors:get(teamID)
    if color == nil then
        color = {255, 255, 255}
    end
    return color
end
team_colors = __TS__New(Map, {
    {DOTA_TEAM_GOODGUYS, {61, 210, 150}},
    {DOTA_TEAM_BADGUYS, {243, 201, 9}},
    {DOTA_TEAM_CUSTOM_1, {197, 77, 168}},
    {DOTA_TEAM_CUSTOM_2, {255, 108, 0}},
    {DOTA_TEAM_CUSTOM_3, {52, 85, 255}},
    {DOTA_TEAM_CUSTOM_4, {101, 212, 19}},
    {DOTA_TEAM_CUSTOM_5, {129, 83, 54}},
    {DOTA_TEAM_CUSTOM_6, {27, 192, 216}},
    {DOTA_TEAM_CUSTOM_7, {199, 228, 13}},
    {DOTA_TEAM_CUSTOM_8, {140, 42, 244}}
})
____exports.TeamsSettings = __TS__Class()
local TeamsSettings = ____exports.TeamsSettings
TeamsSettings.name = "TeamsSettings"
function TeamsSettings.prototype.____constructor(self)
    self.m_VictoryMessages = __TS__New(Map)
    self.m_GatheredShuffledTeams = {}
    self.maxPlayersPerValidTeam = 1
    self:SettingTeams()
    self.m_VictoryMessages:set(DOTA_TEAM_GOODGUYS, "#VictoryMessage_GoodGuys")
    self.m_VictoryMessages:set(DOTA_TEAM_BADGUYS, "#VictoryMessage_BadGuys")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_1, "#VictoryMessage_Custom1")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_2, "#VictoryMessage_Custom2")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_3, "#VictoryMessage_Custom3")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_4, "#VictoryMessage_Custom4")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_5, "#VictoryMessage_Custom5")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_6, "#VictoryMessage_Custom6")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_7, "#VictoryMessage_Custom7")
    self.m_VictoryMessages:set(DOTA_TEAM_CUSTOM_8, "#VictoryMessage_Custom8")
end
function TeamsSettings.prototype.SettingTeams(self)
    self:HealthBarChange()
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_GOODGUYS, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_BADGUYS, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_1, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_2, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_3, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_4, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_5, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_6, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_7, 1)
    GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_CUSTOM_8, 1)
end
function TeamsSettings.prototype.GatherAndRegisterValidTeams(self)
    local foundTeams = __TS__New(Set)
    for ____, playerStart in ipairs(Entities:FindAllByClassname("info_player_start_dota")) do
        foundTeams:add(playerStart:GetTeamNumber())
    end
    local foundTeamsList = {}
    print(
        self.m_VictoryMessages:get(0),
        self.m_VictoryMessages:get(1)
    )
    foundTeams:forEach(function(____, v, i, o)
        if self.m_VictoryMessages:get(v) ~= nil then
            table.insert(foundTeamsList, v)
        end
    end)
    local numTeams = #foundTeamsList
    if numTeams == 0 then
        table.insert(foundTeamsList, DOTA_TEAM_GOODGUYS)
        table.insert(foundTeamsList, DOTA_TEAM_BADGUYS)
        numTeams = 2
    end
    self.maxPlayersPerValidTeam = math.floor(10 / numTeams)
    repeat
        local ____switch10 = GetMapName()
        local ____cond10 = ____switch10 == "forest_solo"
        if ____cond10 then
            do
                self.maxPlayersPerValidTeam = 1
                break
            end
        end
        ____cond10 = ____cond10 or ____switch10 == "desert_duo"
        if ____cond10 then
            do
                self.maxPlayersPerValidTeam = 2
                break
            end
        end
        ____cond10 = ____cond10 or ____switch10 == "temple_quartet"
        if ____cond10 then
            do
                self.maxPlayersPerValidTeam = 4
                break
            end
        end
        ____cond10 = ____cond10 or ____switch10 == "desert_quintet"
        if ____cond10 then
            do
                self.maxPlayersPerValidTeam = 5
                break
            end
        end
        do
            do
                self.maxPlayersPerValidTeam = 3
                break
            end
        end
    until true
    self.m_GatheredShuffledTeams = ShuffledList(nil, foundTeamsList)
    for team = 0, DOTA_TEAM_COUNT - 1 do
        GameRules:SetCustomGameTeamMaxPlayers(team, 0)
    end
    do
        local i = 0
        while i < numTeams do
            GameRules:SetCustomGameTeamMaxPlayers(self.m_GatheredShuffledTeams[i + 1], self.maxPlayersPerValidTeam)
            i = i + 1
        end
    end
    return self.m_GatheredShuffledTeams
end
function TeamsSettings.prototype.HealthBarChange(self)
    for ____, el in __TS__Iterator(team_colors) do
        local team = el[1]
        local color = el[2]
        SetTeamCustomHealthbarColor(team, color[1], color[2], color[3])
    end
end
function TeamsSettings.prototype.UpdatePlayerColor(self, nPlayerID)
    local teamID = PlayerResource:GetTeam(nPlayerID)
    local color = ____exports.ColorForTeam(nil, teamID)
    if not PlayerResource:HasSelectedHero(nPlayerID) then
        return
    end
    local hero = PlayerResource:GetSelectedHeroEntity(nPlayerID)
    if hero == nil then
        return
    end
    PlayerResource:SetCustomPlayerColor(nPlayerID, color[1], color[2], color[3])
end
function ____exports.AssignTeams(self, m_bFillWithBots)
    local vecTeamValid = {}
    local vecTeamNeededPlayers = {}
    do
        local nTeam = 0
        while nTeam < DOTA_TEAM_COUNT do
            local nMax = GameRules:GetCustomGameTeamMaxPlayers(nTeam)
            if nMax > 0 then
                vecTeamNeededPlayers[nTeam + 1] = nMax
                vecTeamValid[nTeam + 1] = true
            else
                vecTeamValid[nTeam + 1] = false
            end
            nTeam = nTeam + 1
        end
    end
    local hPlayers = {}
    do
        local nPlayerID = 0
        while nPlayerID < DOTA_MAX_TEAM_PLAYERS do
            if PlayerResource:IsValidPlayerID(nPlayerID) then
                local nTeam = PlayerResource:GetTeam(nPlayerID)
                if not vecTeamValid[nTeam + 1] then
                    nTeam = PlayerResource:GetCustomTeamAssignment(nPlayerID)
                end
                if vecTeamValid[nTeam + 1] then
                    vecTeamNeededPlayers[nTeam + 1] = vecTeamNeededPlayers[nTeam + 1] - 1
                else
                    hPlayers[#hPlayers + 1] = nPlayerID
                end
            end
            nPlayerID = nPlayerID + 1
        end
    end
    __TS__ArrayForEach(
        hPlayers,
        function(____, nPlayerID, _)
            local nTeamNumber = -1
            local nHighest = 0
            do
                local nTeam = 0
                while nTeam < DOTA_TEAM_COUNT do
                    if vecTeamValid[nTeam + 1] then
                        local nVal = vecTeamNeededPlayers[nTeam + 1]
                        if nVal > nHighest then
                            nHighest = nVal
                            nTeamNumber = nTeam
                        end
                    end
                    nTeam = nTeam + 1
                end
            end
            if nTeamNumber > 0 then
                PlayerResource:SetCustomTeamAssignment(nPlayerID, nTeamNumber)
                vecTeamNeededPlayers[nTeamNumber + 1] = vecTeamNeededPlayers[nTeamNumber + 1] - 1
            end
        end
    )
    if m_bFillWithBots then
        GameRules:BotPopulate()
    end
end
return ____exports
