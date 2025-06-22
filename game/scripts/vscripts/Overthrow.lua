local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local Map = ____lualib.Map
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["11"] = 1,["12"] = 1,["13"] = 2,["14"] = 2,["15"] = 3,["16"] = 3,["17"] = 3,["18"] = 4,["19"] = 4,["20"] = 5,["21"] = 5,["22"] = 6,["23"] = 6,["24"] = 10,["25"] = 10,["26"] = 10,["27"] = 35,["28"] = 12,["29"] = 14,["30"] = 15,["31"] = 16,["32"] = 17,["33"] = 18,["34"] = 20,["35"] = 21,["36"] = 22,["37"] = 23,["38"] = 24,["39"] = 25,["40"] = 26,["41"] = 27,["42"] = 28,["43"] = 29,["44"] = 30,["45"] = 31,["46"] = 32,["47"] = 36,["48"] = 37,["49"] = 39,["50"] = 40,["51"] = 41,["52"] = 42,["53"] = 43,["54"] = 44,["55"] = 45,["56"] = 46,["57"] = 47,["58"] = 48,["59"] = 50,["60"] = 52,["61"] = 53,["62"] = 53,["63"] = 53,["64"] = 53,["65"] = 35,["66"] = 57,["67"] = 59,["68"] = 60,["69"] = 62,["70"] = 63,["71"] = 66,["73"] = 57,["74"] = 73,["75"] = 74,["76"] = 77,["77"] = 78,["78"] = 79,["79"] = 80,["80"] = 81,["81"] = 83,["82"] = 84,["83"] = 86,["85"] = 89,["88"] = 91,["89"] = 92,["92"] = 93,["96"] = 96,["99"] = 97,["103"] = 100,["106"] = 101,["110"] = 104,["113"] = 105,["119"] = 109,["124"] = 114,["125"] = 115,["126"] = 117,["127"] = 119,["129"] = 121,["130"] = 121,["131"] = 122,["132"] = 123,["133"] = 124,["135"] = 121,["138"] = 128,["139"] = 130,["140"] = 131,["141"] = 132,["142"] = 132,["143"] = 132,["144"] = 132,["145"] = 132,["146"] = 132,["147"] = 132,["148"] = 132,["149"] = 134,["151"] = 73,["152"] = 141,["154"] = 142,["155"] = 142,["156"] = 143,["157"] = 144,["158"] = 144,["159"] = 145,["160"] = 145,["161"] = 145,["162"] = 144,["163"] = 144,["164"] = 142,["167"] = 150,["168"] = 150,["169"] = 150,["170"] = 151,["172"] = 141,["173"] = 155,["174"] = 156,["175"] = 155,["176"] = 158,["177"] = 159,["178"] = 160,["179"] = 161,["180"] = 162,["181"] = 163,["182"] = 164,["185"] = 168,["186"] = 173,["187"] = 174,["189"] = 175,["190"] = 175,["191"] = 176,["192"] = 176,["193"] = 176,["194"] = 176,["195"] = 176,["196"] = 176,["197"] = 176,["198"] = 176,["199"] = 176,["200"] = 176,["201"] = 176,["202"] = 176,["203"] = 178,["204"] = 175,["207"] = 158,["208"] = 182,["209"] = 183,["210"] = 184,["211"] = 184,["212"] = 184,["213"] = 185,["214"] = 185,["215"] = 185,["216"] = 185,["217"] = 184,["218"] = 184,["219"] = 189,["220"] = 189,["221"] = 189,["222"] = 189,["223"] = 189,["224"] = 189,["225"] = 191,["226"] = 191,["227"] = 191,["228"] = 192,["229"] = 195,["230"] = 200,["231"] = 191,["232"] = 191,["233"] = 204,["234"] = 206,["235"] = 207,["236"] = 208,["237"] = 209,["238"] = 210,["239"] = 211,["241"] = 214,["243"] = 217,["244"] = 219,["245"] = 220,["247"] = 224,["248"] = 225,["249"] = 226,["250"] = 228,["251"] = 229,["252"] = 230,["253"] = 231,["254"] = 231,["255"] = 231,["256"] = 231,["257"] = 231,["258"] = 231,["259"] = 231,["260"] = 231,["261"] = 231,["262"] = 239,["265"] = 242,["266"] = 243,["267"] = 244,["268"] = 245,["272"] = 249,["273"] = 250,["274"] = 251,["275"] = 252,["279"] = 182,["280"] = 258,["281"] = 259,["282"] = 260,["283"] = 262,["284"] = 263,["285"] = 264,["286"] = 265,["287"] = 266,["288"] = 267,["289"] = 268,["290"] = 275,["291"] = 276,["292"] = 277,["294"] = 258,["295"] = 281,["296"] = 282,["297"] = 284,["298"] = 285,["300"] = 287,["301"] = 288,["302"] = 289,["303"] = 290,["305"] = 292,["306"] = 294,["307"] = 295,["308"] = 296,["309"] = 297,["310"] = 298,["312"] = 300,["313"] = 301,["314"] = 302,["316"] = 305,["317"] = 306,["318"] = 310,["322"] = 316,["323"] = 318,["324"] = 319,["326"] = 321,["327"] = 281,["328"] = 324,["329"] = 324,["330"] = 329,["331"] = 331,["332"] = 332,["335"] = 333,["336"] = 334,["337"] = 336,["338"] = 337,["339"] = 338,["340"] = 339,["342"] = 341,["344"] = 329,["345"] = 346,["346"] = 346,["347"] = 350,["348"] = 351,["349"] = 352,["350"] = 353,["353"] = 354,["354"] = 355,["355"] = 356,["358"] = 358,["359"] = 359,["360"] = 361,["364"] = 362,["365"] = 363,["368"] = 364,["369"] = 365,["370"] = 366,["371"] = 367,["372"] = 368,["373"] = 369,["374"] = 369,["375"] = 369,["376"] = 369,["377"] = 369,["379"] = 372,["380"] = 372,["381"] = 372,["382"] = 372,["383"] = 372,["385"] = 374,["386"] = 374,["387"] = 374,["388"] = 374,["389"] = 374,["390"] = 374,["391"] = 374,["392"] = 375,["395"] = 378,["396"] = 379,["397"] = 380,["398"] = 381,["399"] = 382,["400"] = 383,["401"] = 383,["402"] = 383,["403"] = 383,["404"] = 383,["405"] = 383,["406"] = 383,["407"] = 383,["408"] = 391,["411"] = 395,["412"] = 395,["413"] = 395,["414"] = 395,["415"] = 395,["416"] = 395,["417"] = 396,["418"] = 396,["419"] = 396,["420"] = 396,["421"] = 396,["422"] = 396,["423"] = 396,["428"] = 400,["431"] = 401,["436"] = 405,["437"] = 350,["438"] = 409,["439"] = 410,["440"] = 411,["441"] = 413,["442"] = 414,["443"] = 415,["444"] = 415,["445"] = 415,["446"] = 415,["447"] = 415,["448"] = 415,["449"] = 415,["450"] = 415,["452"] = 416,["453"] = 416,["454"] = 416,["455"] = 416,["456"] = 416,["457"] = 416,["459"] = 409,["460"] = 419,["461"] = 420,["464"] = 423,["465"] = 424,["466"] = 424,["467"] = 424,["468"] = 424,["469"] = 424,["470"] = 425,["471"] = 425,["472"] = 425,["473"] = 425,["474"] = 425,["475"] = 426,["476"] = 427,["477"] = 429,["478"] = 430,["479"] = 419,["480"] = 433,["481"] = 434,["482"] = 435,["483"] = 436,["484"] = 437,["485"] = 438,["488"] = 442,["490"] = 443,["491"] = 443,["492"] = 444,["493"] = 443,["496"] = 446,["497"] = 448,["498"] = 433,["499"] = 454,["500"] = 455,["501"] = 456,["502"] = 457,["503"] = 454,["504"] = 463,["505"] = 464,["506"] = 465,["507"] = 466,["509"] = 463,["510"] = 470,["511"] = 471,["512"] = 470});
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
    LinkLuaModifier("modifier_fountain_aura_lua", "lua/modifier_fountain_aura_lua.lua", LUA_MODIFIER_MOTION_NONE)
    LinkLuaModifier("modifier_fountain_aura_effect_lua", "lua/modifier_fountain_aura_effect_lua.lua", LUA_MODIFIER_MOTION_NONE)
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
        local ____switch69 = name
        local ____cond69 = ____switch69 == "item_bag_of_gold"
        if ____cond69 then
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
