local ____lualib = require("lualib_bundle")
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__Class = ____lualib.__TS__Class
local Set = ____lualib.Set
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 5,["12"] = 1,["13"] = 1,["14"] = 149,["15"] = 150,["16"] = 151,["17"] = 152,["19"] = 153,["20"] = 149,["21"] = 5,["22"] = 5,["23"] = 5,["24"] = 5,["25"] = 5,["26"] = 5,["27"] = 5,["28"] = 5,["29"] = 5,["30"] = 5,["31"] = 5,["32"] = 5,["33"] = 18,["34"] = 18,["35"] = 18,["37"] = 20,["38"] = 21,["39"] = 23,["40"] = 25,["41"] = 26,["42"] = 27,["43"] = 28,["44"] = 29,["45"] = 30,["46"] = 31,["47"] = 32,["48"] = 33,["49"] = 34,["50"] = 22,["51"] = 37,["52"] = 38,["53"] = 42,["54"] = 43,["55"] = 44,["56"] = 45,["57"] = 46,["58"] = 47,["59"] = 48,["60"] = 49,["61"] = 50,["62"] = 51,["63"] = 37,["64"] = 55,["65"] = 59,["66"] = 60,["67"] = 61,["69"] = 68,["70"] = 69,["71"] = 69,["72"] = 69,["73"] = 69,["74"] = 70,["75"] = 72,["76"] = 73,["78"] = 70,["79"] = 86,["80"] = 89,["81"] = 91,["82"] = 92,["83"] = 93,["85"] = 96,["86"] = 98,["87"] = 109,["88"] = 110,["91"] = 112,["92"] = 112,["93"] = 114,["94"] = 112,["97"] = 116,["98"] = 55,["99"] = 121,["100"] = 122,["101"] = 123,["102"] = 124,["103"] = 125,["105"] = 121,["106"] = 131,["107"] = 132,["108"] = 133,["109"] = 134,["112"] = 138,["113"] = 139,["116"] = 142,["117"] = 131,["118"] = 155,["119"] = 157,["120"] = 158,["122"] = 159,["123"] = 159,["124"] = 160,["125"] = 161,["126"] = 163,["127"] = 164,["129"] = 166,["131"] = 159,["134"] = 171,["136"] = 172,["137"] = 172,["138"] = 173,["139"] = 174,["140"] = 175,["141"] = 176,["143"] = 179,["144"] = 180,["146"] = 182,["149"] = 172,["152"] = 190,["153"] = 190,["154"] = 190,["155"] = 192,["156"] = 193,["158"] = 194,["159"] = 194,["160"] = 195,["161"] = 196,["162"] = 197,["163"] = 199,["164"] = 200,["167"] = 194,["170"] = 204,["171"] = 205,["172"] = 206,["174"] = 190,["175"] = 190,["176"] = 210,["177"] = 211,["179"] = 155});
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
    local maxPlayersPerValidTeam = math.floor(10 / numTeams)
    self.m_GatheredShuffledTeams = ShuffledList(nil, foundTeamsList)
    for team = 0, DOTA_TEAM_COUNT - 1 do
        GameRules:SetCustomGameTeamMaxPlayers(team, 0)
    end
    do
        local i = 0
        while i < numTeams do
            GameRules:SetCustomGameTeamMaxPlayers(self.m_GatheredShuffledTeams[i + 1], maxPlayersPerValidTeam)
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
