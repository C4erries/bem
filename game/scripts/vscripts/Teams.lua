local ____lualib = require("lualib_bundle")
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__Class = ____lualib.__TS__Class
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 4,["10"] = 69,["11"] = 70,["12"] = 71,["13"] = 72,["15"] = 73,["16"] = 69,["17"] = 4,["18"] = 4,["19"] = 4,["20"] = 4,["21"] = 4,["22"] = 4,["23"] = 4,["24"] = 4,["25"] = 4,["26"] = 4,["27"] = 4,["28"] = 4,["29"] = 17,["30"] = 17,["31"] = 17,["33"] = 19,["34"] = 18,["35"] = 22,["36"] = 23,["37"] = 27,["38"] = 28,["39"] = 29,["40"] = 30,["41"] = 31,["42"] = 32,["43"] = 33,["44"] = 34,["45"] = 35,["46"] = 36,["47"] = 22,["48"] = 41,["49"] = 42,["50"] = 43,["51"] = 44,["52"] = 45,["54"] = 41,["55"] = 51,["56"] = 52,["57"] = 53,["58"] = 54,["61"] = 58,["62"] = 59,["65"] = 62,["66"] = 51});
local ____exports = {}
local team_colors
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
    self:SettingTeams()
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
return ____exports
