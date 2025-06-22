local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local Map = ____lualib.Map
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 35,["28"] = 12,["29"] = 14,["30"] = 15,["31"] = 16,["32"] = 17,["33"] = 18,["34"] = 20,["35"] = 21,["36"] = 22,["37"] = 23,["38"] = 24,["39"] = 25,["40"] = 26,["41"] = 27,["42"] = 28,["43"] = 29,["44"] = 30,["45"] = 31,["46"] = 32,["47"] = 36,["48"] = 37,["49"] = 39,["50"] = 40,["51"] = 41,["52"] = 42,["53"] = 43,["54"] = 44,["55"] = 45,["56"] = 46,["57"] = 47,["58"] = 48,["59"] = 50,["60"] = 52,["61"] = 53,["62"] = 53,["63"] = 53,["64"] = 53,["65"] = 35,["66"] = 57,["67"] = 59,["68"] = 60,["69"] = 62,["70"] = 63,["71"] = 66,["73"] = 57,["74"] = 73,["75"] = 74,["76"] = 77,["77"] = 78,["78"] = 79,["79"] = 80,["80"] = 81,["81"] = 83,["82"] = 84,["83"] = 86,["85"] = 89,["87"] = 92,["88"] = 93,["89"] = 94,["90"] = 95,["91"] = 96,["92"] = 97,["93"] = 98,["94"] = 99,["96"] = 101,["98"] = 104,["99"] = 105,["100"] = 107,["101"] = 109,["103"] = 111,["104"] = 111,["105"] = 112,["106"] = 113,["107"] = 114,["109"] = 111,["112"] = 118,["113"] = 120,["114"] = 121,["115"] = 122,["116"] = 122,["117"] = 122,["118"] = 122,["119"] = 122,["120"] = 122,["121"] = 122,["122"] = 122,["123"] = 124,["125"] = 73,["126"] = 131,["128"] = 132,["129"] = 132,["130"] = 133,["131"] = 134,["132"] = 134,["133"] = 135,["134"] = 135,["135"] = 135,["136"] = 134,["137"] = 134,["138"] = 132,["141"] = 140,["142"] = 140,["143"] = 140,["144"] = 141,["146"] = 131,["147"] = 145,["148"] = 146,["149"] = 145,["150"] = 148,["151"] = 149,["152"] = 150,["153"] = 151,["154"] = 152,["155"] = 153,["156"] = 154,["159"] = 158,["160"] = 163,["161"] = 164,["163"] = 165,["164"] = 165,["165"] = 166,["166"] = 166,["167"] = 166,["168"] = 166,["169"] = 166,["170"] = 166,["171"] = 166,["172"] = 166,["173"] = 166,["174"] = 166,["175"] = 166,["176"] = 166,["177"] = 168,["178"] = 165,["181"] = 148,["182"] = 172,["183"] = 173,["184"] = 174,["185"] = 174,["186"] = 174,["187"] = 175,["188"] = 175,["189"] = 175,["190"] = 175,["191"] = 174,["192"] = 174,["193"] = 179,["194"] = 179,["195"] = 179,["196"] = 179,["197"] = 179,["198"] = 179,["199"] = 181,["200"] = 181,["201"] = 181,["202"] = 182,["203"] = 185,["204"] = 190,["205"] = 181,["206"] = 181,["207"] = 194,["208"] = 196,["209"] = 197,["210"] = 198,["211"] = 199,["212"] = 200,["213"] = 201,["215"] = 204,["217"] = 207,["218"] = 209,["219"] = 210,["221"] = 214,["222"] = 215,["223"] = 216,["224"] = 218,["225"] = 219,["226"] = 220,["227"] = 221,["228"] = 221,["229"] = 221,["230"] = 221,["231"] = 221,["232"] = 221,["233"] = 221,["234"] = 221,["235"] = 221,["236"] = 229,["239"] = 232,["240"] = 233,["241"] = 234,["242"] = 235,["246"] = 239,["247"] = 240,["248"] = 241,["249"] = 242,["253"] = 172,["254"] = 248,["255"] = 249,["256"] = 250,["257"] = 252,["258"] = 253,["259"] = 254,["260"] = 255,["261"] = 256,["262"] = 257,["263"] = 258,["264"] = 265,["265"] = 266,["266"] = 267,["268"] = 248,["269"] = 271,["270"] = 272,["271"] = 274,["272"] = 275,["274"] = 277,["275"] = 278,["276"] = 279,["277"] = 280,["279"] = 282,["280"] = 284,["281"] = 285,["282"] = 286,["283"] = 287,["284"] = 288,["286"] = 290,["287"] = 291,["288"] = 292,["290"] = 295,["291"] = 296,["292"] = 300,["296"] = 306,["297"] = 308,["298"] = 309,["300"] = 311,["301"] = 271,["302"] = 314,["303"] = 314,["304"] = 319,["305"] = 321,["306"] = 322,["309"] = 323,["310"] = 324,["311"] = 326,["312"] = 327,["313"] = 328,["314"] = 329,["316"] = 331,["318"] = 319,["319"] = 336,["320"] = 336,["321"] = 340,["322"] = 341,["323"] = 342,["324"] = 343,["327"] = 344,["328"] = 345,["329"] = 346,["332"] = 348,["333"] = 349,["334"] = 351,["338"] = 352,["339"] = 353,["342"] = 354,["343"] = 355,["344"] = 356,["345"] = 357,["346"] = 358,["347"] = 359,["348"] = 359,["349"] = 359,["350"] = 359,["351"] = 359,["353"] = 362,["354"] = 362,["355"] = 362,["356"] = 362,["357"] = 362,["359"] = 364,["360"] = 364,["361"] = 364,["362"] = 364,["363"] = 364,["364"] = 364,["365"] = 364,["366"] = 365,["369"] = 368,["370"] = 369,["371"] = 370,["372"] = 371,["373"] = 372,["374"] = 373,["375"] = 373,["376"] = 373,["377"] = 373,["378"] = 373,["379"] = 373,["380"] = 373,["381"] = 373,["382"] = 381,["385"] = 385,["386"] = 385,["387"] = 385,["388"] = 385,["389"] = 385,["390"] = 385,["391"] = 386,["392"] = 386,["393"] = 386,["394"] = 386,["395"] = 386,["396"] = 386,["397"] = 386,["402"] = 390,["405"] = 391,["410"] = 395,["411"] = 340,["412"] = 399,["413"] = 400,["414"] = 401,["415"] = 403,["416"] = 404,["417"] = 405,["418"] = 405,["419"] = 405,["420"] = 405,["421"] = 405,["422"] = 405,["423"] = 405,["424"] = 405,["426"] = 406,["427"] = 406,["428"] = 406,["429"] = 406,["430"] = 406,["431"] = 406,["433"] = 399,["434"] = 409,["435"] = 410,["438"] = 413,["439"] = 414,["440"] = 414,["441"] = 414,["442"] = 414,["443"] = 414,["444"] = 415,["445"] = 415,["446"] = 415,["447"] = 415,["448"] = 415,["449"] = 416,["450"] = 417,["451"] = 419,["452"] = 420,["453"] = 409,["454"] = 423,["455"] = 424,["456"] = 425,["457"] = 426,["458"] = 427,["459"] = 428,["462"] = 432,["464"] = 433,["465"] = 433,["466"] = 434,["467"] = 433,["470"] = 436,["471"] = 438,["472"] = 423,["473"] = 444,["474"] = 445,["475"] = 446,["476"] = 447,["477"] = 444,["478"] = 453,["479"] = 454,["480"] = 455,["481"] = 456,["483"] = 453,["484"] = 460,["485"] = 461,["486"] = 460});
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
local ____GameConfig = require("GameConfig")
local GameConfig = ____GameConfig.GameConfig
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
    local MONEY = GameConfig.COIN_MONEY
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
                local cointype = RandomInt(1, 100)
                if cointype <= GameConfig.FAKE_COIN_CHANCE then
                    local ent = PlayerResource:GetSelectedHeroEntity(owner:GetPlayerID())
                    if ent ~= nil then
                        if ent:GetGold() < MONEY * 2 then
                            PlayerResource:SpendGold(
                                owner:GetPlayerID(),
                                ent:GetGold(),
                                0
                            )
                        else
                            PlayerResource:SpendGold(
                                owner:GetPlayerID(),
                                MONEY * 2,
                                0
                            )
                        end
                        SendOverheadEventMessage(
                            owner,
                            OVERHEAD_ALERT_GOLD,
                            baseNpc,
                            MONEY * -2,
                            nil
                        )
                        EmitGlobalSound("Overthrow.Item.GoldStolen")
                    end
                    break
                elseif cointype > GameConfig.FAKE_COIN_CHANCE and cointype <= GameConfig.FAKE_COIN_CHANCE + GameConfig.BOMB_COIN_CHANCE then
                    local ent = PlayerResource:GetSelectedHeroEntity(owner:GetPlayerID())
                    if ent ~= nil then
                        ent:AddNewModifier(nil, nil, "modifier_stunned", {duration = 1})
                        ent:AddNewModifier(nil, nil, "modifier_rooted", {duration = 1})
                        ApplyDamage({
                            attacker = baseNpc,
                            victim = ent,
                            damage = ent:GetMaxHealth() / 100 * 10 + 100,
                            damage_type = DAMAGE_TYPE_PURE,
                            ability = nil,
                            damage_flags = DOTA_DAMAGE_FLAG_NONE
                        })
                        EmitGlobalSound("Overthrow.Item.GoldBoom")
                    end
                else
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
