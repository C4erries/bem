local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local Map = ____lualib.Map
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 9,["23"] = 9,["24"] = 9,["25"] = 34,["26"] = 11,["27"] = 13,["28"] = 14,["29"] = 15,["30"] = 16,["31"] = 17,["32"] = 19,["33"] = 20,["34"] = 21,["35"] = 22,["36"] = 23,["37"] = 24,["38"] = 25,["39"] = 26,["40"] = 27,["41"] = 28,["42"] = 29,["43"] = 30,["44"] = 31,["45"] = 35,["46"] = 36,["47"] = 38,["48"] = 39,["49"] = 40,["50"] = 41,["51"] = 42,["52"] = 43,["53"] = 44,["54"] = 45,["55"] = 46,["56"] = 47,["57"] = 49,["58"] = 51,["59"] = 52,["60"] = 52,["61"] = 52,["62"] = 52,["63"] = 34,["64"] = 56,["65"] = 58,["66"] = 59,["67"] = 61,["68"] = 62,["69"] = 65,["71"] = 56,["72"] = 72,["73"] = 73,["74"] = 76,["75"] = 77,["76"] = 78,["77"] = 79,["78"] = 80,["79"] = 82,["80"] = 83,["81"] = 85,["83"] = 88,["85"] = 91,["86"] = 92,["87"] = 93,["88"] = 94,["89"] = 95,["90"] = 96,["91"] = 97,["92"] = 98,["94"] = 100,["96"] = 103,["97"] = 104,["98"] = 106,["99"] = 108,["101"] = 110,["102"] = 110,["103"] = 111,["104"] = 112,["105"] = 113,["107"] = 110,["110"] = 117,["111"] = 119,["112"] = 120,["113"] = 121,["114"] = 121,["115"] = 121,["116"] = 121,["117"] = 121,["118"] = 121,["119"] = 121,["120"] = 121,["121"] = 123,["123"] = 72,["124"] = 130,["126"] = 131,["127"] = 131,["128"] = 132,["129"] = 133,["130"] = 133,["131"] = 134,["132"] = 134,["133"] = 134,["134"] = 133,["135"] = 133,["136"] = 131,["139"] = 139,["140"] = 139,["141"] = 139,["142"] = 140,["144"] = 130,["145"] = 144,["146"] = 145,["147"] = 144,["148"] = 147,["149"] = 148,["150"] = 149,["151"] = 150,["152"] = 151,["153"] = 152,["154"] = 153,["157"] = 157,["158"] = 162,["159"] = 163,["161"] = 164,["162"] = 164,["163"] = 165,["164"] = 165,["165"] = 165,["166"] = 165,["167"] = 165,["168"] = 165,["169"] = 165,["170"] = 165,["171"] = 165,["172"] = 165,["173"] = 165,["174"] = 165,["175"] = 167,["176"] = 164,["179"] = 147,["180"] = 171,["181"] = 172,["182"] = 173,["183"] = 173,["184"] = 173,["185"] = 174,["186"] = 174,["187"] = 174,["188"] = 174,["189"] = 173,["190"] = 173,["191"] = 178,["192"] = 178,["193"] = 178,["194"] = 178,["195"] = 178,["196"] = 178,["197"] = 180,["198"] = 180,["199"] = 180,["200"] = 181,["201"] = 184,["202"] = 189,["203"] = 180,["204"] = 180,["205"] = 193,["206"] = 195,["207"] = 196,["208"] = 197,["209"] = 198,["210"] = 199,["211"] = 200,["213"] = 203,["215"] = 206,["216"] = 208,["217"] = 209,["219"] = 213,["220"] = 214,["221"] = 215,["222"] = 217,["223"] = 218,["224"] = 219,["225"] = 220,["226"] = 220,["227"] = 220,["228"] = 220,["229"] = 220,["230"] = 220,["231"] = 220,["232"] = 220,["233"] = 220,["234"] = 228,["237"] = 231,["238"] = 232,["239"] = 233,["240"] = 234,["244"] = 238,["245"] = 239,["246"] = 240,["247"] = 241,["251"] = 171,["252"] = 247,["253"] = 248,["254"] = 249,["255"] = 251,["256"] = 252,["257"] = 253,["258"] = 254,["259"] = 255,["260"] = 256,["261"] = 257,["262"] = 264,["263"] = 265,["264"] = 266,["266"] = 247,["267"] = 270,["268"] = 271,["269"] = 273,["270"] = 274,["272"] = 276,["273"] = 277,["274"] = 278,["275"] = 279,["277"] = 281,["278"] = 283,["279"] = 284,["280"] = 285,["281"] = 286,["282"] = 287,["284"] = 289,["285"] = 290,["286"] = 291,["288"] = 294,["289"] = 295,["290"] = 299,["294"] = 305,["295"] = 307,["296"] = 308,["298"] = 310,["299"] = 270,["300"] = 313,["301"] = 313,["302"] = 318,["303"] = 320,["304"] = 321,["307"] = 322,["308"] = 323,["309"] = 325,["310"] = 326,["311"] = 327,["312"] = 328,["314"] = 330,["316"] = 318,["317"] = 335,["318"] = 335,["319"] = 340,["320"] = 341,["321"] = 342,["322"] = 343,["325"] = 344,["326"] = 345,["327"] = 346,["330"] = 348,["331"] = 349,["332"] = 351,["336"] = 352,["337"] = 353,["340"] = 354,["341"] = 354,["342"] = 354,["343"] = 354,["344"] = 354,["345"] = 354,["346"] = 355,["347"] = 355,["348"] = 355,["349"] = 355,["350"] = 355,["351"] = 355,["352"] = 355,["356"] = 358,["359"] = 359,["364"] = 363,["365"] = 340,["366"] = 367,["367"] = 368,["368"] = 369,["369"] = 371,["370"] = 372,["371"] = 373,["372"] = 373,["373"] = 373,["374"] = 373,["375"] = 373,["376"] = 373,["377"] = 373,["378"] = 373,["380"] = 374,["381"] = 374,["382"] = 374,["383"] = 374,["384"] = 374,["385"] = 374,["387"] = 367,["388"] = 377,["389"] = 378,["392"] = 381,["393"] = 382,["394"] = 382,["395"] = 382,["396"] = 382,["397"] = 382,["398"] = 383,["399"] = 383,["400"] = 383,["401"] = 383,["402"] = 383,["403"] = 384,["404"] = 385,["405"] = 387,["406"] = 388,["407"] = 377,["408"] = 391,["409"] = 392,["410"] = 393,["411"] = 394,["412"] = 395,["413"] = 396,["416"] = 400,["418"] = 401,["419"] = 401,["420"] = 402,["421"] = 401,["424"] = 404,["425"] = 406,["426"] = 391,["427"] = 412,["428"] = 413,["429"] = 414,["430"] = 415,["431"] = 412,["432"] = 421,["433"] = 422,["434"] = 423,["435"] = 424,["437"] = 421,["438"] = 428,["439"] = 429,["440"] = 428});
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
