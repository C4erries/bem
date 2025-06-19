local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local Set = ____lualib.Set
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["13"] = 1,["14"] = 1,["15"] = 2,["16"] = 2,["17"] = 7,["18"] = 7,["19"] = 7,["21"] = 10,["22"] = 11,["23"] = 12,["24"] = 13,["25"] = 14,["26"] = 17,["27"] = 18,["28"] = 19,["29"] = 20,["30"] = 21,["31"] = 22,["32"] = 23,["33"] = 24,["34"] = 25,["35"] = 26,["36"] = 27,["37"] = 28,["38"] = 33,["39"] = 34,["40"] = 35,["41"] = 36,["42"] = 37,["43"] = 38,["44"] = 39,["45"] = 40,["46"] = 41,["47"] = 42,["48"] = 44,["49"] = 44,["50"] = 44,["51"] = 44,["52"] = 32,["53"] = 46,["54"] = 47,["55"] = 48,["56"] = 49,["57"] = 50,["58"] = 51,["59"] = 52,["61"] = 54,["63"] = 56,["65"] = 58,["66"] = 46,["67"] = 61,["68"] = 62,["69"] = 63,["70"] = 64,["72"] = 66,["73"] = 61,["74"] = 69,["75"] = 70,["76"] = 71,["77"] = 72,["78"] = 73,["79"] = 75,["80"] = 76,["81"] = 77,["82"] = 78,["83"] = 79,["85"] = 82,["86"] = 69,["87"] = 85,["88"] = 89,["89"] = 90,["90"] = 91,["92"] = 99,["93"] = 100,["94"] = 100,["95"] = 100,["96"] = 100,["97"] = 101,["98"] = 103,["99"] = 104,["101"] = 101,["102"] = 117,["103"] = 120,["104"] = 122,["105"] = 123,["106"] = 124,["108"] = 127,["109"] = 129,["110"] = 140,["111"] = 141,["114"] = 143,["115"] = 143,["116"] = 145,["117"] = 143,["120"] = 85,["121"] = 149,["122"] = 151,["123"] = 152,["125"] = 153,["126"] = 153,["127"] = 154,["128"] = 155,["129"] = 157,["130"] = 158,["132"] = 160,["134"] = 153,["137"] = 165,["139"] = 166,["140"] = 166,["141"] = 167,["142"] = 168,["143"] = 169,["144"] = 170,["146"] = 173,["147"] = 174,["149"] = 176,["152"] = 166,["155"] = 184,["156"] = 184,["157"] = 184,["158"] = 186,["159"] = 187,["161"] = 188,["162"] = 188,["163"] = 189,["164"] = 190,["165"] = 191,["166"] = 193,["167"] = 194,["170"] = 188,["173"] = 198,["174"] = 199,["175"] = 200,["177"] = 184,["178"] = 184,["179"] = 204,["180"] = 205,["182"] = 149,["183"] = 212,["184"] = 213,["185"] = 216,["186"] = 217,["187"] = 218,["188"] = 219,["189"] = 220,["190"] = 222,["191"] = 223,["192"] = 225,["194"] = 228,["196"] = 231,["197"] = 232,["198"] = 233,["199"] = 234,["200"] = 235,["201"] = 236,["202"] = 237,["203"] = 238,["205"] = 240,["207"] = 243,["208"] = 245,["209"] = 247,["211"] = 249,["212"] = 249,["213"] = 250,["214"] = 251,["215"] = 252,["217"] = 249,["220"] = 256,["221"] = 258,["222"] = 259,["223"] = 260,["224"] = 260,["225"] = 260,["226"] = 260,["227"] = 260,["228"] = 260,["229"] = 260,["230"] = 260,["231"] = 262,["233"] = 212,["234"] = 268,["235"] = 269,["236"] = 270,["237"] = 271,["238"] = 268,["239"] = 274,["240"] = 281,["241"] = 282,["242"] = 283,["244"] = 286,["245"] = 287,["246"] = 288,["248"] = 290,["249"] = 293,["250"] = 294,["252"] = 296,["253"] = 297,["254"] = 298,["255"] = 299,["257"] = 301,["258"] = 305,["259"] = 306,["260"] = 307,["261"] = 308,["263"] = 312,["265"] = 313,["266"] = 313,["267"] = 314,["268"] = 315,["269"] = 316,["271"] = 313,["274"] = 320,["275"] = 321,["278"] = 325,["279"] = 327,["281"] = 331,["282"] = 332,["283"] = 333,["284"] = 334,["285"] = 335,["286"] = 336,["290"] = 340,["291"] = 274,["292"] = 342,["293"] = 343,["294"] = 342,["295"] = 345,["296"] = 346,["297"] = 347,["298"] = 348,["299"] = 349,["300"] = 350,["301"] = 351,["304"] = 355,["305"] = 360,["306"] = 361,["308"] = 362,["309"] = 362,["310"] = 363,["311"] = 363,["312"] = 363,["313"] = 363,["314"] = 363,["315"] = 363,["316"] = 363,["317"] = 363,["318"] = 363,["319"] = 363,["320"] = 363,["321"] = 363,["322"] = 365,["323"] = 362,["326"] = 345,["327"] = 369,["328"] = 370,["329"] = 371,["330"] = 372,["331"] = 372,["332"] = 372,["333"] = 372,["334"] = 372,["335"] = 372,["336"] = 372,["338"] = 376,["339"] = 376,["340"] = 376,["341"] = 376,["342"] = 376,["343"] = 376,["344"] = 378,["345"] = 379,["346"] = 382,["347"] = 387,["349"] = 391,["350"] = 393,["351"] = 394,["352"] = 395,["353"] = 396,["354"] = 397,["355"] = 398,["357"] = 401,["359"] = 404,["360"] = 406,["361"] = 407,["362"] = 408,["363"] = 410,["364"] = 411,["365"] = 412,["366"] = 413,["367"] = 413,["368"] = 413,["369"] = 413,["370"] = 413,["371"] = 413,["372"] = 413,["373"] = 413,["374"] = 413,["375"] = 421,["378"] = 424,["379"] = 425,["380"] = 426,["381"] = 427,["385"] = 431,["386"] = 432,["387"] = 433,["388"] = 434,["392"] = 369,["393"] = 440,["394"] = 441,["395"] = 442,["396"] = 444,["397"] = 445,["398"] = 446,["399"] = 447,["400"] = 448,["401"] = 449,["402"] = 450,["403"] = 457,["404"] = 458,["405"] = 459,["407"] = 440,["408"] = 463,["409"] = 464,["410"] = 466,["411"] = 467,["413"] = 470,["414"] = 471,["415"] = 472,["416"] = 473,["418"] = 475,["419"] = 477,["420"] = 478,["421"] = 479,["422"] = 480,["423"] = 481,["425"] = 483,["426"] = 484,["427"] = 485,["431"] = 488,["432"] = 489,["433"] = 493,["437"] = 499,["438"] = 501,["439"] = 502,["441"] = 504,["442"] = 463,["443"] = 507,["444"] = 507,["445"] = 510,["446"] = 510,["447"] = 514,["448"] = 514,["449"] = 519,["450"] = 521,["451"] = 522,["454"] = 523,["455"] = 524,["456"] = 526,["457"] = 527,["458"] = 528,["459"] = 529,["461"] = 531,["463"] = 519,["464"] = 536,["465"] = 536,["466"] = 541,["467"] = 542,["468"] = 544,["469"] = 545,["470"] = 546,["471"] = 547,["474"] = 549,["475"] = 550,["476"] = 552,["480"] = 553,["481"] = 554,["484"] = 555,["485"] = 555,["486"] = 555,["487"] = 555,["488"] = 555,["489"] = 555,["490"] = 556,["491"] = 556,["492"] = 556,["493"] = 556,["494"] = 556,["495"] = 556,["496"] = 556,["500"] = 559,["503"] = 560,["504"] = 578,["509"] = 583,["510"] = 541,["511"] = 588,["512"] = 588,["513"] = 592,["514"] = 593,["515"] = 594,["516"] = 596,["517"] = 597,["518"] = 598,["519"] = 598,["520"] = 598,["521"] = 598,["522"] = 598,["523"] = 598,["524"] = 598,["525"] = 598,["527"] = 599,["528"] = 599,["529"] = 599,["530"] = 599,["531"] = 599,["532"] = 599,["534"] = 592,["535"] = 602,["536"] = 603,["539"] = 606,["540"] = 607,["541"] = 607,["542"] = 607,["543"] = 607,["544"] = 607,["545"] = 608,["546"] = 608,["547"] = 608,["548"] = 608,["549"] = 608,["550"] = 609,["551"] = 610,["552"] = 612,["553"] = 613,["554"] = 602,["555"] = 616,["556"] = 617,["557"] = 618,["558"] = 619,["559"] = 620,["560"] = 621,["563"] = 625,["565"] = 626,["566"] = 626,["567"] = 627,["568"] = 626,["571"] = 629,["572"] = 631,["573"] = 616});
local ____exports = {}
local ____Teams = require("Teams")
local ColorForTeam = ____Teams.ColorForTeam
local ____Utility = require("Utility")
local AddVector = ____Utility.AddVector
____exports.Overthrow = __TS__Class()
local Overthrow = ____exports.Overthrow
Overthrow.name = "Overthrow"
function Overthrow.prototype.____constructor(self)
    self.KILLS_TO_WIN_SINGLES = 20
    self.KILLS_TO_WIN_DUOS = 30
    self.KILLS_TO_WIN_TRIOS = 40
    self.KILLS_TO_WIN_QUADS = 50
    self.KILLS_TO_WIN_QUINTS = 60
    self.countdownEnabled = false
    self.isGameTied = true
    self.TEAM_KILLS_TO_WIN = 50
    self.leadingTeamScore = 0
    self.leadingTeam = -1
    self.m_VictoryMessages = __TS__New(Map)
    self.runnerupTeam = -1
    self.runnerupTeamScore = -1
    self.m_GatheredShuffledTeams = {}
    self.spawncamps = __TS__New(Map)
    self.m_bFillWithBots = true
    self._fPreGameStartTime = 10
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
    GameRules:GetGameModeEntity():SetExecuteOrderFilter(
        function(____, event) return self:ExecuteOrderFilter(event) end,
        self
    )
end
function Overthrow.prototype.shallowcopy(self, orig)
    local orig_type = type(orig)
    local copy
    if orig_type == "table" then
        local copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
        return copy
    else
        copy = orig
    end
    return copy
end
function Overthrow.prototype.tableToList(self, luaTable)
    local list = {}
    for _, v in pairs(luaTable) do
        table.insert(list, v)
    end
    return list
end
function Overthrow.prototype.ShuffledList(self, orig_list)
    local list = __TS__ArraySlice(orig_list)
    local result = {}
    local count = #list
    local t = ""
    for i = 0, count - 1 do
        local pick = RandomInt(0, #list - 1)
        result[#result + 1] = list[pick + 1]
        t = t .. tostring(list[pick + 1]) .. ","
        __TS__ArraySplice(list, pick, 1)
    end
    return result
end
function Overthrow.prototype.GatherAndRegisterValidTeams(self)
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
    self.m_GatheredShuffledTeams = self:ShuffledList(foundTeamsList)
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
end
function Overthrow.prototype.AssignTeams(self)
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
    if self.m_bFillWithBots then
        GameRules:BotPopulate()
    end
end
function Overthrow.prototype.OnGameRulesStateChange(self)
    local nNewState = GameRules:State_Get()
    if nNewState == DOTA_GAMERULES_STATE_HERO_SELECTION then
        self:AssignTeams()
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
function Overthrow.prototype.BountyRunePickupFilter(self, filterTable)
    filterTable.xp_bounty = 2 * filterTable.xp_bounty
    filterTable.gold_bounty = 2 * filterTable.gold_bounty
    return true
end
function Overthrow.prototype.ExecuteOrderFilter(self, filterTable)
    local orderType = filterTable.order_type
    if orderType ~= DOTA_UNIT_ORDER_PICKUP_ITEM or filterTable.issuer_player_id_const == -1 then
        return true
    else
        local item = EntIndexToHScript(filterTable.entindex_target)
        if item == nil then
            return true
        end
        local pickedItem = item:GetContainedItem()
        if pickedItem == nil then
            return true
        end
        if pickedItem:GetAbilityName() == "item_treasure_chest" then
            local player = PlayerResource:GetPlayer(filterTable.issuer_player_id_const)
            if player == nil then
                return true
            end
            local hero = player:GetAssignedHero()
            local bAllowPickup = false
            local hNeutralItem = hero:GetItemInSlot(DOTA_ITEM_NEUTRAL_SLOT)
            if hNeutralItem == nil then
                bAllowPickup = true
            else
                local numBackpackItems = 0
                do
                    local nItemSlot = 0
                    while nItemSlot < DOTA_ITEM_INVENTORY_SIZE do
                        local hItem = hero:GetItemInSlot(nItemSlot)
                        if hItem and hItem:IsInBackpack() then
                            numBackpackItems = numBackpackItems + 1
                        end
                        nItemSlot = nItemSlot + 1
                    end
                end
                if numBackpackItems < 3 then
                    bAllowPickup = true
                end
            end
            if bAllowPickup then
                return true
            else
                local position = item:GetAbsOrigin()
                filterTable.position_x = position.x
                filterTable.position_y = position.y
                filterTable.position_z = position.z
                filterTable.order_type = DOTA_UNIT_ORDER_MOVE_TO_POSITION
                return true
            end
        end
    end
    return true
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
    for _, team in pairs(self.m_GatheredShuffledTeams) do
        table.insert(
            sortedTeams,
            {
                teamID = team,
                teamScore = GetTeamHeroKills(team)
            }
        )
    end
    table.sort(
        sortedTeams,
        function(a, b)
            return a.teamScore > b.teamScore
        end
    )
    for _, t in pairs(sortedTeams) do
        local clr = ColorForTeam(nil, t.teamID)
        local score = {team_id = t.teamID, team_score = t.teamScore}
        CustomGameEventManager:Send_ServerToAllClients("score_board", score)
    end
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
            end
        else
            do
                self.TEAM_KILLS_TO_WIN = self.leadingTeamScore + 1
                local broadcast_killcount = {killcount = self.TEAM_KILLS_TO_WIN}
                CustomGameEventManager:Send_ServerToAllClients("overtime_alert", broadcast_killcount)
            end
        end
    end
    if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
        self:ThinkGoldDrop()
        self:ThinkSpecialItemDrop()
    end
    return 1
end
function Overthrow.prototype.ThinkGoldDrop(self)
end
function Overthrow.prototype.ThinkSpecialItemDrop(self)
end
function Overthrow.prototype.ForceSpawnItem(self)
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
        local ____switch108 = name
        local ____cond108 = ____switch108 == "item_bag_of_gold"
        if ____cond108 then
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
        ____cond108 = ____cond108 or ____switch108 == "item_treasure_chest"
        if ____cond108 then
            do
                local hContainer = item:GetContainer()
                self:SpecialItemAdd(event)
                break
            end
        end
    until true
    UTIL_Remove(item)
end
function Overthrow.prototype.SpecialItemAdd(self, event)
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
return ____exports
