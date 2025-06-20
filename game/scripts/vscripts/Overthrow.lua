local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local Map = ____lualib.Map
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 10,["21"] = 10,["22"] = 10,["23"] = 37,["24"] = 12,["25"] = 14,["26"] = 15,["27"] = 16,["28"] = 17,["29"] = 18,["30"] = 21,["31"] = 22,["32"] = 23,["33"] = 24,["34"] = 25,["35"] = 26,["36"] = 27,["37"] = 28,["38"] = 29,["39"] = 30,["40"] = 31,["41"] = 32,["42"] = 33,["43"] = 38,["44"] = 39,["45"] = 41,["46"] = 42,["47"] = 43,["48"] = 44,["49"] = 45,["50"] = 46,["51"] = 47,["52"] = 48,["53"] = 49,["54"] = 50,["55"] = 52,["56"] = 54,["57"] = 55,["58"] = 55,["59"] = 55,["60"] = 55,["61"] = 37,["62"] = 59,["63"] = 61,["64"] = 62,["65"] = 64,["66"] = 65,["67"] = 68,["69"] = 59,["70"] = 75,["71"] = 76,["72"] = 79,["73"] = 80,["74"] = 81,["75"] = 82,["76"] = 83,["77"] = 85,["78"] = 86,["79"] = 88,["81"] = 91,["83"] = 94,["84"] = 95,["85"] = 96,["86"] = 97,["87"] = 98,["88"] = 99,["89"] = 100,["90"] = 101,["92"] = 103,["94"] = 106,["95"] = 107,["96"] = 109,["97"] = 111,["99"] = 113,["100"] = 113,["101"] = 114,["102"] = 115,["103"] = 116,["105"] = 113,["108"] = 120,["109"] = 122,["110"] = 123,["111"] = 124,["112"] = 124,["113"] = 124,["114"] = 124,["115"] = 124,["116"] = 124,["117"] = 124,["118"] = 124,["119"] = 126,["121"] = 75,["122"] = 133,["124"] = 134,["125"] = 134,["126"] = 135,["127"] = 136,["128"] = 136,["129"] = 137,["130"] = 137,["131"] = 137,["132"] = 136,["133"] = 136,["134"] = 134,["137"] = 142,["138"] = 142,["139"] = 142,["140"] = 143,["142"] = 133,["143"] = 147,["144"] = 148,["145"] = 147,["146"] = 150,["147"] = 151,["148"] = 152,["149"] = 153,["150"] = 154,["151"] = 155,["152"] = 156,["155"] = 160,["156"] = 165,["157"] = 166,["159"] = 167,["160"] = 167,["161"] = 168,["162"] = 168,["163"] = 168,["164"] = 168,["165"] = 168,["166"] = 168,["167"] = 168,["168"] = 168,["169"] = 168,["170"] = 168,["171"] = 168,["172"] = 168,["173"] = 170,["174"] = 167,["177"] = 150,["178"] = 174,["179"] = 175,["180"] = 176,["181"] = 176,["182"] = 176,["183"] = 177,["184"] = 177,["185"] = 177,["186"] = 177,["187"] = 176,["188"] = 176,["189"] = 181,["190"] = 181,["191"] = 181,["192"] = 181,["193"] = 181,["194"] = 181,["195"] = 183,["196"] = 183,["197"] = 183,["198"] = 184,["199"] = 187,["200"] = 192,["201"] = 183,["202"] = 183,["203"] = 196,["204"] = 198,["205"] = 199,["206"] = 200,["207"] = 201,["208"] = 202,["209"] = 203,["211"] = 206,["213"] = 209,["214"] = 211,["215"] = 212,["217"] = 216,["218"] = 217,["219"] = 218,["220"] = 220,["221"] = 221,["222"] = 222,["223"] = 223,["224"] = 223,["225"] = 223,["226"] = 223,["227"] = 223,["228"] = 223,["229"] = 223,["230"] = 223,["231"] = 223,["232"] = 231,["235"] = 234,["236"] = 235,["237"] = 236,["238"] = 237,["242"] = 241,["243"] = 242,["244"] = 243,["245"] = 244,["249"] = 174,["250"] = 250,["251"] = 251,["252"] = 252,["253"] = 254,["254"] = 255,["255"] = 256,["256"] = 257,["257"] = 258,["258"] = 259,["259"] = 260,["260"] = 267,["261"] = 268,["262"] = 269,["264"] = 250,["265"] = 273,["266"] = 274,["267"] = 276,["268"] = 277,["270"] = 279,["271"] = 280,["272"] = 281,["273"] = 282,["275"] = 284,["276"] = 286,["277"] = 287,["278"] = 288,["279"] = 289,["280"] = 290,["282"] = 292,["283"] = 293,["284"] = 294,["286"] = 297,["287"] = 298,["288"] = 302,["292"] = 308,["293"] = 310,["294"] = 311,["296"] = 313,["297"] = 273,["298"] = 316,["299"] = 316,["300"] = 321,["301"] = 323,["302"] = 324,["305"] = 325,["306"] = 326,["307"] = 328,["308"] = 329,["309"] = 330,["310"] = 331,["312"] = 333,["314"] = 321,["315"] = 338,["316"] = 338,["317"] = 343,["318"] = 344,["319"] = 345,["320"] = 346,["323"] = 347,["324"] = 348,["325"] = 349,["328"] = 351,["329"] = 352,["330"] = 354,["334"] = 355,["335"] = 356,["338"] = 357,["339"] = 357,["340"] = 357,["341"] = 357,["342"] = 357,["343"] = 357,["344"] = 358,["345"] = 358,["346"] = 358,["347"] = 358,["348"] = 358,["349"] = 358,["350"] = 358,["354"] = 361,["357"] = 362,["362"] = 366,["363"] = 343,["364"] = 370,["365"] = 371,["366"] = 372,["367"] = 374,["368"] = 375,["369"] = 376,["370"] = 376,["371"] = 376,["372"] = 376,["373"] = 376,["374"] = 376,["375"] = 376,["376"] = 376,["378"] = 377,["379"] = 377,["380"] = 377,["381"] = 377,["382"] = 377,["383"] = 377,["385"] = 370,["386"] = 380,["387"] = 381,["390"] = 384,["391"] = 385,["392"] = 385,["393"] = 385,["394"] = 385,["395"] = 385,["396"] = 386,["397"] = 386,["398"] = 386,["399"] = 386,["400"] = 386,["401"] = 387,["402"] = 388,["403"] = 390,["404"] = 391,["405"] = 380,["406"] = 394,["407"] = 395,["408"] = 396,["409"] = 397,["410"] = 398,["411"] = 399,["414"] = 403,["416"] = 404,["417"] = 404,["418"] = 405,["419"] = 404,["422"] = 407,["423"] = 409,["424"] = 394,["425"] = 415,["426"] = 416,["427"] = 417,["428"] = 418,["429"] = 415,["430"] = 424,["431"] = 425,["432"] = 426,["433"] = 427,["435"] = 424,["436"] = 431,["437"] = 432,["438"] = 431});
local ____exports = {}
local ____OverthrowEvents = require("OverthrowEvents")
local ExecuteOrderFilter = ____OverthrowEvents.ExecuteOrderFilter
local ____OverthrowSpawnItem = require("OverthrowSpawnItem")
local OverthrowSpawnItem = ____OverthrowSpawnItem.OverthrowSpawnItem
local ____Teams = require("Teams")
local AssignTeams = ____Teams.AssignTeams
local ColorForTeam = ____Teams.ColorForTeam
local ____Utility = require("Utility")
local AddVector = ____Utility.AddVector
____exports.Overthrow = __TS__Class()
local Overthrow = ____exports.Overthrow
Overthrow.name = "Overthrow"
function Overthrow.prototype.____constructor(self, GatheredShuffledTeams)
    self.overthrowSpawnItem = __TS__New(OverthrowSpawnItem)
    self.KILLS_TO_WIN_SINGLES = 20
    self.KILLS_TO_WIN_DUOS = 30
    self.KILLS_TO_WIN_TRIOS = 40
    self.KILLS_TO_WIN_QUADS = 50
    self.KILLS_TO_WIN_QUINTS = 60
    self.m_VictoryMessages = __TS__New(Map)
    self.countdownEnabled = false
    self.isGameTied = true
    self.TEAM_KILLS_TO_WIN = 50
    self.leadingTeamScore = 0
    self.leadingTeam = -1
    self.runnerupTeam = -1
    self.runnerupTeamScore = -1
    self.m_GatheredShuffledTeams = {}
    self.spawncamps = __TS__New(Map)
    self.m_bFillWithBots = true
    self._fPreGameStartTime = 10
    self.numSpawnCamps = 5
    self.m_GatheredShuffledTeams = GatheredShuffledTeams
    self:SetUpFountains()
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
    self:CustomSpawnCamps()
    ListenToGameEvent("dota_npc_goal_reached", self.OnNpcGoalReached, self)
    GameRules:GetGameModeEntity():SetExecuteOrderFilter(
        function(____, event) return ExecuteOrderFilter(nil, event) end,
        self
    )
end
function Overthrow.prototype.SetUpFountains(self)
    LinkLuaModifier("modifier_fountain_aura_lua", "modifier_fountain_aura_lua.lua", LUA_MODIFIER_MOTION_NONE)
    LinkLuaModifier("modifier_fountain_aura_effect_lua", "modifier_fountain_aura_effect_lua.lua", LUA_MODIFIER_MOTION_NONE)
    local fountainEntities = Entities:FindAllByClassname("ent_dota_fountain")
    for ____, fountainEnt in ipairs(fountainEntities) do
        fountainEnt:AddNewModifier(fountainEnt, nil, "modifier_fountain_aura_lua", {})
    end
end
function Overthrow.prototype.OnGameRulesStateChange(self)
    local nNewState = GameRules:State_Get()
    if nNewState == DOTA_GAMERULES_STATE_HERO_SELECTION then
        AssignTeams(nil, self.m_bFillWithBots)
    elseif nNewState == DOTA_GAMERULES_STATE_PRE_GAME then
        local numberOfPlayers = PlayerResource:GetPlayerCount()
        if numberOfPlayers > 7 then
            nCOUNTDOWNTIMER = 901
        elseif numberOfPlayers > 4 or numberOfPlayers <= 7 then
            nCOUNTDOWNTIMER = 721
        else
            nCOUNTDOWNTIMER = 601
        end
        if GetMapName() == "forest_solo" then
            self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_SINGLES
        elseif GetMapName() == "desert_duo" then
            self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_DUOS
        elseif GetMapName() == "temple_quartet" then
            self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_QUADS
        elseif GetMapName() == "desert_quintet" then
            self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_QUINTS
        else
            self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_TRIOS
        end
        CustomNetTables:SetTableValue("game_state", "victory_condition", {kills_to_win = self.TEAM_KILLS_TO_WIN})
        print((("Setting game_state value: " .. tostring(self.TEAM_KILLS_TO_WIN)) .. " | GetValue: ") .. tostring(CustomNetTables:GetTableValue("game_state", "victory_condition")))
        self._fPreGameStartTime = GameRules:GetGameTime()
    elseif nNewState == DOTA_GAMERULES_STATE_STRATEGY_TIME then
        do
            local nPlayerID = 0
            while nPlayerID < DOTA_MAX_TEAM_PLAYERS do
                local hPlayer = PlayerResource:GetPlayer(nPlayerID)
                if hPlayer and not PlayerResource:HasSelectedHero(nPlayerID) then
                    hPlayer:MakeRandomHeroSelection()
                end
                nPlayerID = nPlayerID + 1
            end
        end
    elseif nNewState == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
        self.countdownEnabled = true
        CustomGameEventManager:Send_ServerToAllClients("show_timer", {})
        DoEntFire(
            "center_experience_ring_particles",
            "Start",
            "0",
            0,
            self,
            self
        )
        GameRules:GetGameModeEntity():SetAnnouncerDisabled(true)
    end
end
function Overthrow.prototype.CustomSpawnCamps(self)
    do
        local i = 1
        while i <= self.numSpawnCamps do
            local campname = ("camp" .. tostring(i)) .. "_path_customspawn"
            self.spawncamps:set(
                campname,
                {
                    NumberToSpawn = RandomInt(3, 5),
                    WaypointName = ("camp" .. tostring(i)) .. "_path_wp1"
                }
            )
            i = i + 1
        end
    end
    for ____, ____value in __TS__Iterator(self.spawncamps) do
        local name = ____value[1]
        local _ = ____value[2]
        self:spawnunits(name)
    end
end
function Overthrow.prototype.spawncamp(self, campname)
    self:spawnunits(campname)
end
function Overthrow.prototype.spawnunits(self, campname)
    local spawndata = self.spawncamps:get(campname)
    print("spawndataType = " .. __TS__TypeOf(spawndata))
    local NumberToSpawn = spawndata.NumberToSpawn
    local SpawnLocation = Entities:FindByName(nil, campname)
    local waypointlocation = Entities:FindByName(nil, spawndata.WaypointName)
    if SpawnLocation == nil then
        return
    end
    local randomCreature = {"basic_zombie", "berserk_zombie"}
    local r = randomCreature[RandomInt(0, #randomCreature - 1) + 1]
    print(r)
    do
        local i = 1
        while i <= NumberToSpawn do
            local creature = CreateUnitByName(
                "npc_dota_creature_" .. r,
                AddVector(
                    nil,
                    SpawnLocation:GetAbsOrigin(),
                    RandomVector(RandomFloat(0, 200))
                ),
                true,
                nil,
                nil,
                DOTA_TEAM_NEUTRALS
            )
            creature:SetInitialGoalEntity(waypointlocation)
            i = i + 1
        end
    end
end
function Overthrow.prototype.UpdateScoreboard(self)
    local sortedTeams = {}
    __TS__ArrayForEach(
        self.m_GatheredShuffledTeams,
        function(____, team)
            sortedTeams[#sortedTeams + 1] = {
                teamID = team,
                teamScore = GetTeamHeroKills(team)
            }
        end
    )
    table.sort(
        sortedTeams,
        function(a, b)
            return a.teamScore > b.teamScore
        end
    )
    __TS__ArrayForEach(
        sortedTeams,
        function(____, t)
            local clr = ColorForTeam(nil, t.teamID)
            local score = {team_id = t.teamID, team_score = t.teamScore}
            CustomGameEventManager:Send_ServerToAllClients("score_board", score)
        end
    )
    local leader = sortedTeams[1].teamID
    self.leadingTeam = leader
    self.runnerupTeam = sortedTeams[2].teamID
    self.leadingTeamScore = sortedTeams[1].teamScore
    self.runnerupTeamScore = sortedTeams[2].teamScore
    if sortedTeams[1].teamScore == sortedTeams[2].teamScore then
        self.isGameTied = true
    else
        self.isGameTied = false
    end
    local allHeroes = HeroList:GetAllHeroes()
    if self.leadingTeamScore >= self.TEAM_KILLS_TO_WIN then
        self:EndGame(self.leadingTeam)
    end
    for ____, entity in ipairs(allHeroes) do
        if entity:GetTeamNumber() == leader and not self.isGameTied then
            if entity:IsAlive() then
                local existingParticle = entity:Attribute_GetIntValue("particleID", -1)
                if existingParticle == -1 then
                    local particleLeader = ParticleManager:CreateParticle("particles/leader/leader_overhead.vpcf", PATTACH_OVERHEAD_FOLLOW, entity)
                    ParticleManager:SetParticleControlEnt(
                        particleLeader,
                        PATTACH_OVERHEAD_FOLLOW,
                        entity,
                        PATTACH_OVERHEAD_FOLLOW,
                        "follow_overhead",
                        entity:GetAbsOrigin(),
                        true
                    )
                    entity:Attribute_SetIntValue("particleID", particleLeader)
                end
            else
                local particleLeader = entity:Attribute_GetIntValue("particleID", -1)
                if particleLeader ~= -1 then
                    ParticleManager:DestroyParticle(particleLeader, true)
                    entity:DeleteAttribute("particleID")
                end
            end
        else
            local particleLeader = entity:Attribute_GetIntValue("particleID", -1)
            if particleLeader ~= -1 then
                ParticleManager:DestroyParticle(particleLeader, true)
                entity:DeleteAttribute("particleID")
            end
        end
    end
end
function Overthrow.prototype.CountdownTimer(self)
    nCOUNTDOWNTIMER = nCOUNTDOWNTIMER - 1
    local t = nCOUNTDOWNTIMER
    local minutes = math.floor(t / 60)
    local seconds = t - minutes * 60
    local m10 = math.floor(minutes / 10)
    local m01 = minutes - m10 * 10
    local s10 = math.floor(seconds / 10)
    local s01 = seconds - s10 * 10
    local broadcast_gametimer = {timer_minute_10 = m10, timer_minute_01 = m01, timer_second_10 = s10, timer_second_01 = s01}
    CustomGameEventManager:Send_ServerToAllClients("countdown", broadcast_gametimer)
    if t <= 120 then
        CustomGameEventManager:Send_ServerToAllClients("time_remaining", broadcast_gametimer)
    end
end
function Overthrow.prototype.OverthrowThink(self)
    self:UpdateScoreboard()
    if GameRules:IsGamePaused() then
        return 1
    end
    if self.countdownEnabled then
        self:CountdownTimer()
        if nCOUNTDOWNTIMER == 30 then
            CustomGameEventManager:Send_ServerToAllClients("timer_alert", {})
        end
        if nCOUNTDOWNTIMER <= 0 then
            if not self.isGameTied then
                local victory_message = self.m_VictoryMessages:get(self.leadingTeam)
                if victory_message == nil then
                    print("Victory message not found for team: " .. tostring(self.leadingTeam))
                    return 1
                end
                GameRules:SetCustomVictoryMessage(victory_message)
                self:EndGame(self.leadingTeam)
                self.countdownEnabled = false
            else
                self.TEAM_KILLS_TO_WIN = self.leadingTeamScore + 1
                local broadcast_killcount = {killcount = self.TEAM_KILLS_TO_WIN}
                CustomGameEventManager:Send_ServerToAllClients("overtime_alert", broadcast_killcount)
            end
        end
    end
    if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
        self:ThinkGoldDrop()
        self.overthrowSpawnItem:ThinkSpecialItemDrop()
    end
    return 1
end
function Overthrow.prototype.ThinkGoldDrop(self)
end
function Overthrow.prototype.SpawnGold(self)
    local overboss = Entities:FindByName(nil, "@overboss")
    if overboss == nil then
        return
    end
    local throwCoin = overboss:FindAbilityByName("dota_ability_throw_coin")
    local throwCoinLong = overboss:FindAbilityByName("dota_ability_throw_coin_long")
    if throwCoinLong and RandomInt(1, 100) > 80 then
        overboss:CastAbilityNoTarget(throwCoinLong, -1)
    elseif throwCoin then
        overboss:CastAbilityNoTarget(throwCoin, -1)
    else
        self:SpawnGoldEntity(Vector(0, 0, 0))
    end
end
function Overthrow.prototype.SetTimer(self)
end
function Overthrow.prototype.OnItemPickedUp(self, event)
    local MONEY = 200
    local name = event.itemname
    if event.HeroEntityIndex == nil then
        return
    end
    local item = EntIndexToHScript(event.ItemEntityIndex)
    local entity = EntIndexToHScript(event.HeroEntityIndex)
    if entity == nil then
        return
    end
    local baseNpc = entity
    local owner = entity:GetOwner()
    if not owner:IsPlayerController() then
        return
    end
    repeat
        local ____switch68 = name
        local ____cond68 = ____switch68 == "item_bag_of_gold"
        if ____cond68 then
            do
                PlayerResource:ModifyGold(
                    owner:GetPlayerID(),
                    MONEY,
                    true,
                    0
                )
                SendOverheadEventMessage(
                    owner,
                    OVERHEAD_ALERT_GOLD,
                    baseNpc,
                    MONEY,
                    nil
                )
                break
            end
        end
        ____cond68 = ____cond68 or ____switch68 == "item_treasure_chest"
        if ____cond68 then
            do
                self.overthrowSpawnItem:OnTreasureChestPickedUp(event)
                break
            end
        end
    until true
    UTIL_Remove(item)
end
function Overthrow.prototype.SpawnGoldEntity(self, spawnPoint)
    EmitGlobalSound("Item.PickUpGemWorld")
    local newItem = CreateItem("item_bag_of_gold", nil, nil)
    local drop = CreateItemOnPositionForLaunch(spawnPoint, newItem)
    local dropRadius = RandomFloat(200, 800)
    if newItem ~= nil then
        newItem:LaunchLootInitialHeight(
            false,
            0,
            500,
            0.75,
            spawnPoint + RandomVector(dropRadius)
        )
    end
    if newItem ~= nil then
        newItem:SetContextThink(
            "KillLoot",
            function() return self:KillLoot(newItem, drop) end,
            20
        )
    end
end
function Overthrow.prototype.KillLoot(self, item, drop)
    if drop:IsNull() then
        return
    end
    local nFXIndex = ParticleManager:CreateParticle("particles/items2_fx/veil_of_discord.vpcf", PATTACH_CUSTOMORIGIN, drop)
    ParticleManager:SetParticleControl(
        nFXIndex,
        0,
        drop:GetOrigin()
    )
    ParticleManager:SetParticleControl(
        nFXIndex,
        1,
        Vector(35, 35, 25)
    )
    ParticleManager:ReleaseParticleIndex(nFXIndex)
    EmitGlobalSound("Item.PickUpWorld")
    UTIL_Remove(item)
    UTIL_Remove(drop)
end
function Overthrow.prototype.EndGame(self, victoryTeam)
    local overBoss = Entities:FindByName(nil, "@overboss")
    if overBoss ~= nil then
        local celebrate = overBoss:FindAbilityByName("dota_ability_celebrate")
        if celebrate ~= nil then
            overBoss:CastAbilityNoTarget(celebrate, -1)
        end
    end
    local tTeamScores = {}
    do
        local team = DOTA_TEAM_FIRST
        while team < DOTA_TEAM_COUNT do
            tTeamScores[team + 1] = GetTeamHeroKills(team)
            team = team + 1
        end
    end
    GameRules:SetPostGameTeamScores(tTeamScores)
    GameRules:SetGameWinner(victoryTeam)
end
function Overthrow.prototype.BountyRunePickupFilter(self, filterTable)
    filterTable.xp_bounty = 2 * filterTable.xp_bounty
    filterTable.gold_bounty = 2 * filterTable.gold_bounty
    return true
end
function Overthrow.prototype.OnNpcGoalReached(self, event)
    local npc = EntIndexToHScript(event.npc_entindex)
    if npc:GetUnitName() == "npc_dota_treasure_courier" then
        self.overthrowSpawnItem:TreasureDrop(npc)
    end
end
function Overthrow.prototype.ForceSpawnItem(self)
    self.overthrowSpawnItem:ForceSpawnItem()
end
return ____exports
