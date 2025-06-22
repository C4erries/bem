local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local Map = ____lualib.Map
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 34,["26"] = 11,["27"] = 13,["28"] = 14,["29"] = 15,["30"] = 16,["31"] = 17,["32"] = 19,["33"] = 20,["34"] = 21,["35"] = 22,["36"] = 23,["37"] = 24,["38"] = 25,["39"] = 26,["40"] = 27,["41"] = 28,["42"] = 29,["43"] = 30,["44"] = 31,["45"] = 35,["46"] = 36,["47"] = 38,["48"] = 39,["49"] = 40,["50"] = 41,["51"] = 42,["52"] = 43,["53"] = 44,["54"] = 45,["55"] = 46,["56"] = 47,["57"] = 49,["58"] = 51,["59"] = 52,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 34,["64"] = 56,["65"] = 58,["66"] = 59,["67"] = 61,["68"] = 62,["69"] = 65,["71"] = 56,["72"] = 72,["73"] = 73,["74"] = 76,["75"] = 77,["76"] = 78,["77"] = 79,["78"] = 80,["79"] = 82,["80"] = 83,["81"] = 85,["83"] = 88,["86"] = 90,["87"] = 91,["90"] = 92,["94"] = 95,["97"] = 96,["101"] = 99,["104"] = 100,["108"] = 103,["111"] = 104,["117"] = 108,["122"] = 113,["123"] = 114,["124"] = 116,["125"] = 118,["127"] = 120,["128"] = 120,["129"] = 121,["130"] = 122,["131"] = 123,["133"] = 120,["136"] = 127,["137"] = 129,["138"] = 130,["139"] = 131,["140"] = 131,["141"] = 131,["142"] = 131,["143"] = 131,["144"] = 131,["145"] = 131,["146"] = 131,["147"] = 133,["149"] = 72,["150"] = 140,["152"] = 141,["153"] = 141,["154"] = 142,["155"] = 143,["156"] = 143,["157"] = 144,["158"] = 144,["159"] = 144,["160"] = 143,["161"] = 143,["162"] = 141,["165"] = 149,["166"] = 149,["167"] = 149,["168"] = 150,["170"] = 140,["171"] = 154,["172"] = 155,["173"] = 154,["174"] = 157,["175"] = 158,["176"] = 159,["177"] = 160,["178"] = 161,["179"] = 162,["180"] = 163,["183"] = 167,["184"] = 172,["185"] = 173,["187"] = 174,["188"] = 174,["189"] = 175,["190"] = 175,["191"] = 175,["192"] = 175,["193"] = 175,["194"] = 175,["195"] = 175,["196"] = 175,["197"] = 175,["198"] = 175,["199"] = 175,["200"] = 175,["201"] = 177,["202"] = 174,["205"] = 157,["206"] = 181,["207"] = 182,["208"] = 183,["209"] = 183,["210"] = 183,["211"] = 184,["212"] = 184,["213"] = 184,["214"] = 184,["215"] = 183,["216"] = 183,["217"] = 188,["218"] = 188,["219"] = 188,["220"] = 188,["221"] = 188,["222"] = 188,["223"] = 190,["224"] = 190,["225"] = 190,["226"] = 191,["227"] = 194,["228"] = 199,["229"] = 190,["230"] = 190,["231"] = 203,["232"] = 205,["233"] = 206,["234"] = 207,["235"] = 208,["236"] = 209,["237"] = 210,["239"] = 213,["241"] = 216,["242"] = 218,["243"] = 219,["245"] = 223,["246"] = 224,["247"] = 225,["248"] = 227,["249"] = 228,["250"] = 229,["251"] = 230,["252"] = 230,["253"] = 230,["254"] = 230,["255"] = 230,["256"] = 230,["257"] = 230,["258"] = 230,["259"] = 230,["260"] = 238,["263"] = 241,["264"] = 242,["265"] = 243,["266"] = 244,["270"] = 248,["271"] = 249,["272"] = 250,["273"] = 251,["277"] = 181,["278"] = 257,["279"] = 258,["280"] = 259,["281"] = 261,["282"] = 262,["283"] = 263,["284"] = 264,["285"] = 265,["286"] = 266,["287"] = 267,["288"] = 274,["289"] = 275,["290"] = 276,["292"] = 257,["293"] = 280,["294"] = 281,["295"] = 283,["296"] = 284,["298"] = 286,["299"] = 287,["300"] = 288,["301"] = 289,["303"] = 291,["304"] = 293,["305"] = 294,["306"] = 295,["307"] = 296,["308"] = 297,["310"] = 299,["311"] = 300,["312"] = 301,["314"] = 304,["315"] = 305,["316"] = 309,["320"] = 315,["321"] = 317,["322"] = 318,["324"] = 320,["325"] = 280,["326"] = 323,["327"] = 323,["328"] = 328,["329"] = 330,["330"] = 331,["333"] = 332,["334"] = 333,["335"] = 335,["336"] = 336,["337"] = 337,["338"] = 338,["340"] = 340,["342"] = 328,["343"] = 345,["344"] = 345,["345"] = 350,["346"] = 351,["347"] = 352,["348"] = 353,["351"] = 354,["352"] = 355,["353"] = 356,["356"] = 358,["357"] = 359,["358"] = 361,["362"] = 362,["363"] = 363,["366"] = 364,["367"] = 364,["368"] = 364,["369"] = 364,["370"] = 364,["371"] = 364,["372"] = 365,["373"] = 365,["374"] = 365,["375"] = 365,["376"] = 365,["377"] = 365,["378"] = 365,["382"] = 368,["385"] = 369,["390"] = 373,["391"] = 350,["392"] = 377,["393"] = 378,["394"] = 379,["395"] = 381,["396"] = 382,["397"] = 383,["398"] = 383,["399"] = 383,["400"] = 383,["401"] = 383,["402"] = 383,["403"] = 383,["404"] = 383,["406"] = 384,["407"] = 384,["408"] = 384,["409"] = 384,["410"] = 384,["411"] = 384,["413"] = 377,["414"] = 387,["415"] = 388,["418"] = 391,["419"] = 392,["420"] = 392,["421"] = 392,["422"] = 392,["423"] = 392,["424"] = 393,["425"] = 393,["426"] = 393,["427"] = 393,["428"] = 393,["429"] = 394,["430"] = 395,["431"] = 397,["432"] = 398,["433"] = 387,["434"] = 401,["435"] = 402,["436"] = 403,["437"] = 404,["438"] = 405,["439"] = 406,["442"] = 410,["444"] = 411,["445"] = 411,["446"] = 412,["447"] = 411,["450"] = 414,["451"] = 416,["452"] = 401,["453"] = 422,["454"] = 423,["455"] = 424,["456"] = 425,["457"] = 422,["458"] = 431,["459"] = 432,["460"] = 433,["461"] = 434,["463"] = 431,["464"] = 438,["465"] = 439,["466"] = 438});
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
local ____Config = require("Config")
local Config = ____Config.Config
____exports.Overthrow = __TS__Class()
local Overthrow = ____exports.Overthrow
Overthrow.name = "Overthrow"
function Overthrow.prototype.____constructor(self, GatheredShuffledTeams)
    self.overthrowSpawnItem = __TS__New(OverthrowSpawnItem)
    self.KILLS_TO_WIN_SINGLES = Config.KILLS_TO_WIN_SINGLES
    self.KILLS_TO_WIN_DUOS = Config.KILLS_TO_WIN_DUOS
    self.KILLS_TO_WIN_TRIOS = Config.KILLS_TO_WIN_TRIOS
    self.KILLS_TO_WIN_QUADS = Config.KILLS_TO_WIN_QUADS
    self.KILLS_TO_WIN_QUINTS = Config.KILLS_TO_WIN_QUINTS
    self.countdownEnabled = Config.COUNTDOWN_ENABLED
    self.isGameTied = true
    self.TEAM_KILLS_TO_WIN = 50
    self.leadingTeamScore = 0
    self.leadingTeam = -1
    self.m_VictoryMessages = __TS__New(Map)
    self.runnerupTeam = -1
    self.runnerupTeamScore = 0
    self.m_GatheredShuffledTeams = {}
    self.spawncamps = __TS__New(Map)
    self.m_bFillWithBots = Config.FILL_WITH_BOTS
    self._fPreGameStartTime = Config.PRE_GAME_START_TIME
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
        repeat
            local ____switch13 = GetMapName()
            local ____cond13 = ____switch13 == "forest_solo"
            if ____cond13 then
                do
                    self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_SINGLES
                    break
                end
            end
            ____cond13 = ____cond13 or ____switch13 == "desert_duo"
            if ____cond13 then
                do
                    self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_DUOS
                    break
                end
            end
            ____cond13 = ____cond13 or ____switch13 == "temple_quartet"
            if ____cond13 then
                do
                    self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_QUADS
                    break
                end
            end
            ____cond13 = ____cond13 or ____switch13 == "desert_quintet"
            if ____cond13 then
                do
                    self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_QUINTS
                    break
                end
            end
            do
                do
                    self.TEAM_KILLS_TO_WIN = self.KILLS_TO_WIN_TRIOS
                    break
                end
            end
        until true
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
        self.countdownEnabled = Config.COUNTDOWN_ENABLED
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
        local ____switch69 = name
        local ____cond69 = ____switch69 == "item_bag_of_gold"
        if ____cond69 then
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
        ____cond69 = ____cond69 or ____switch69 == "item_treasure_chest"
        if ____cond69 then
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
