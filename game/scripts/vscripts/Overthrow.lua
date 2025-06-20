local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local Map = ____lualib.Map
local __TS__New = ____lualib.__TS__New
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local Set = ____lualib.Set
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__Iterator = ____lualib.__TS__Iterator
local __TS__TypeOf = ____lualib.__TS__TypeOf
local __TS__ArraySort = ____lualib.__TS__ArraySort
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 3,["20"] = 3,["21"] = 4,["22"] = 4,["23"] = 17,["24"] = 17,["25"] = 17,["27"] = 19,["28"] = 20,["29"] = 21,["30"] = 22,["31"] = 23,["32"] = 25,["33"] = 26,["34"] = 27,["35"] = 28,["36"] = 29,["37"] = 30,["38"] = 31,["39"] = 32,["40"] = 33,["41"] = 34,["42"] = 35,["43"] = 36,["44"] = 37,["45"] = 39,["46"] = 40,["47"] = 41,["48"] = 42,["49"] = 43,["50"] = 44,["51"] = 45,["52"] = 46,["53"] = 47,["54"] = 48,["55"] = 49,["56"] = 50,["57"] = 51,["58"] = 52,["59"] = 59,["60"] = 60,["61"] = 61,["62"] = 62,["63"] = 63,["64"] = 64,["65"] = 65,["66"] = 66,["67"] = 67,["68"] = 68,["69"] = 70,["70"] = 73,["71"] = 75,["72"] = 76,["73"] = 76,["74"] = 76,["75"] = 76,["76"] = 58,["77"] = 79,["78"] = 80,["79"] = 81,["80"] = 82,["81"] = 83,["82"] = 85,["83"] = 86,["84"] = 87,["85"] = 88,["86"] = 89,["88"] = 92,["89"] = 79,["90"] = 95,["91"] = 99,["92"] = 100,["93"] = 101,["95"] = 108,["96"] = 109,["97"] = 109,["98"] = 109,["99"] = 109,["100"] = 110,["101"] = 112,["102"] = 113,["104"] = 110,["105"] = 126,["106"] = 129,["107"] = 131,["108"] = 132,["109"] = 133,["111"] = 136,["112"] = 138,["113"] = 149,["114"] = 150,["117"] = 152,["118"] = 152,["119"] = 154,["120"] = 152,["123"] = 95,["124"] = 158,["125"] = 160,["126"] = 161,["128"] = 162,["129"] = 162,["130"] = 163,["131"] = 164,["132"] = 166,["133"] = 167,["135"] = 169,["137"] = 162,["140"] = 174,["142"] = 175,["143"] = 175,["144"] = 176,["145"] = 177,["146"] = 178,["147"] = 179,["149"] = 182,["150"] = 183,["152"] = 185,["155"] = 175,["158"] = 193,["159"] = 193,["160"] = 193,["161"] = 195,["162"] = 196,["164"] = 197,["165"] = 197,["166"] = 198,["167"] = 199,["168"] = 200,["169"] = 202,["170"] = 203,["173"] = 197,["176"] = 207,["177"] = 208,["178"] = 209,["180"] = 193,["181"] = 193,["182"] = 213,["183"] = 214,["185"] = 158,["186"] = 217,["187"] = 219,["188"] = 220,["189"] = 222,["190"] = 223,["191"] = 226,["193"] = 217,["194"] = 233,["195"] = 234,["196"] = 237,["197"] = 238,["198"] = 239,["199"] = 240,["200"] = 241,["201"] = 243,["202"] = 244,["203"] = 246,["205"] = 249,["207"] = 252,["208"] = 253,["209"] = 254,["210"] = 255,["211"] = 256,["212"] = 257,["213"] = 258,["214"] = 259,["216"] = 261,["218"] = 264,["219"] = 265,["220"] = 267,["221"] = 269,["223"] = 271,["224"] = 271,["225"] = 272,["226"] = 273,["227"] = 274,["229"] = 271,["232"] = 278,["233"] = 280,["234"] = 281,["235"] = 282,["236"] = 282,["237"] = 282,["238"] = 282,["239"] = 282,["240"] = 282,["241"] = 282,["242"] = 282,["243"] = 284,["245"] = 233,["246"] = 290,["247"] = 291,["248"] = 292,["249"] = 293,["250"] = 290,["251"] = 296,["252"] = 303,["253"] = 304,["254"] = 305,["256"] = 308,["257"] = 309,["258"] = 310,["260"] = 312,["261"] = 315,["262"] = 316,["265"] = 318,["266"] = 319,["269"] = 320,["270"] = 321,["271"] = 322,["276"] = 325,["279"] = 326,["280"] = 327,["281"] = 328,["283"] = 330,["284"] = 334,["285"] = 335,["286"] = 336,["287"] = 337,["289"] = 341,["291"] = 342,["292"] = 342,["293"] = 343,["294"] = 344,["295"] = 345,["297"] = 342,["300"] = 349,["301"] = 350,["304"] = 354,["305"] = 356,["307"] = 360,["308"] = 361,["309"] = 362,["310"] = 363,["311"] = 364,["312"] = 365,["319"] = 371,["320"] = 296,["321"] = 374,["323"] = 375,["324"] = 375,["325"] = 376,["326"] = 377,["327"] = 377,["328"] = 378,["329"] = 378,["330"] = 378,["331"] = 377,["332"] = 377,["333"] = 375,["336"] = 383,["337"] = 383,["338"] = 383,["339"] = 384,["341"] = 374,["342"] = 388,["343"] = 389,["344"] = 388,["345"] = 391,["346"] = 392,["347"] = 393,["348"] = 394,["349"] = 395,["350"] = 396,["351"] = 397,["354"] = 401,["355"] = 406,["356"] = 407,["358"] = 408,["359"] = 408,["360"] = 409,["361"] = 409,["362"] = 409,["363"] = 409,["364"] = 409,["365"] = 409,["366"] = 409,["367"] = 409,["368"] = 409,["369"] = 409,["370"] = 409,["371"] = 409,["372"] = 411,["373"] = 408,["376"] = 391,["377"] = 415,["378"] = 416,["379"] = 417,["380"] = 417,["381"] = 417,["382"] = 418,["383"] = 418,["384"] = 418,["385"] = 418,["386"] = 417,["387"] = 417,["388"] = 422,["389"] = 422,["390"] = 422,["391"] = 422,["392"] = 422,["393"] = 422,["394"] = 424,["395"] = 424,["396"] = 424,["397"] = 425,["398"] = 428,["399"] = 433,["400"] = 424,["401"] = 424,["402"] = 437,["403"] = 439,["404"] = 440,["405"] = 441,["406"] = 442,["407"] = 443,["408"] = 444,["410"] = 447,["412"] = 450,["413"] = 452,["414"] = 453,["416"] = 457,["417"] = 458,["418"] = 459,["419"] = 461,["420"] = 462,["421"] = 463,["422"] = 464,["423"] = 464,["424"] = 464,["425"] = 464,["426"] = 464,["427"] = 464,["428"] = 464,["429"] = 464,["430"] = 464,["431"] = 472,["434"] = 475,["435"] = 476,["436"] = 477,["437"] = 478,["441"] = 482,["442"] = 483,["443"] = 484,["444"] = 485,["448"] = 415,["449"] = 491,["450"] = 492,["451"] = 493,["452"] = 495,["453"] = 496,["454"] = 497,["455"] = 498,["456"] = 499,["457"] = 500,["458"] = 501,["459"] = 508,["460"] = 509,["461"] = 510,["463"] = 491,["464"] = 514,["465"] = 515,["466"] = 517,["467"] = 518,["469"] = 520,["470"] = 521,["471"] = 522,["472"] = 523,["474"] = 525,["475"] = 527,["476"] = 528,["477"] = 529,["478"] = 530,["479"] = 531,["481"] = 533,["482"] = 534,["483"] = 535,["485"] = 538,["486"] = 539,["487"] = 543,["491"] = 549,["492"] = 551,["493"] = 552,["495"] = 554,["496"] = 514,["497"] = 557,["498"] = 557,["499"] = 562,["500"] = 564,["501"] = 565,["504"] = 566,["505"] = 567,["506"] = 569,["507"] = 570,["508"] = 571,["509"] = 572,["511"] = 574,["513"] = 562,["514"] = 579,["515"] = 579,["516"] = 584,["517"] = 585,["518"] = 586,["519"] = 587,["522"] = 588,["523"] = 589,["524"] = 590,["527"] = 592,["528"] = 593,["529"] = 595,["533"] = 596,["534"] = 597,["537"] = 598,["538"] = 598,["539"] = 598,["540"] = 598,["541"] = 598,["542"] = 598,["543"] = 599,["544"] = 599,["545"] = 599,["546"] = 599,["547"] = 599,["548"] = 599,["549"] = 599,["553"] = 602,["556"] = 603,["557"] = 606,["558"] = 607,["559"] = 607,["560"] = 607,["561"] = 608,["562"] = 609,["563"] = 610,["564"] = 611,["565"] = 612,["566"] = 613,["568"] = 615,["569"] = 615,["570"] = 615,["571"] = 615,["572"] = 615,["573"] = 615,["574"] = 615,["575"] = 615,["577"] = 617,["578"] = 617,["579"] = 618,["582"] = 607,["583"] = 607,["584"] = 606,["585"] = 623,["586"] = 625,["591"] = 630,["592"] = 584,["593"] = 634,["594"] = 635,["595"] = 636,["596"] = 638,["597"] = 639,["598"] = 640,["599"] = 640,["600"] = 640,["601"] = 640,["602"] = 640,["603"] = 640,["604"] = 640,["605"] = 640,["607"] = 641,["608"] = 641,["609"] = 641,["610"] = 641,["611"] = 641,["612"] = 641,["614"] = 634,["615"] = 644,["616"] = 645,["619"] = 648,["620"] = 649,["621"] = 649,["622"] = 649,["623"] = 649,["624"] = 649,["625"] = 650,["626"] = 650,["627"] = 650,["628"] = 650,["629"] = 650,["630"] = 651,["631"] = 652,["632"] = 654,["633"] = 655,["634"] = 644,["635"] = 658,["636"] = 659,["637"] = 660,["638"] = 661,["639"] = 662,["640"] = 663,["643"] = 667,["645"] = 668,["646"] = 668,["647"] = 669,["648"] = 668,["651"] = 671,["652"] = 673,["653"] = 658,["654"] = 675,["655"] = 676,["656"] = 678,["657"] = 678,["658"] = 678,["659"] = 678,["660"] = 678,["661"] = 678,["662"] = 678,["663"] = 678,["665"] = 682,["666"] = 683,["667"] = 684,["668"] = 685,["669"] = 675,["670"] = 687,["671"] = 688,["672"] = 689,["673"] = 690,["674"] = 691,["677"] = 694,["678"] = 695,["679"] = 696,["680"] = 699,["681"] = 699,["682"] = 699,["683"] = 701,["684"] = 701,["685"] = 701,["686"] = 701,["687"] = 699,["688"] = 699,["689"] = 706,["690"] = 706,["691"] = 706,["692"] = 706,["693"] = 707,["694"] = 709,["695"] = 711,["696"] = 714,["697"] = 715,["698"] = 716,["699"] = 717,["700"] = 718,["701"] = 721,["702"] = 724,["703"] = 726,["704"] = 727,["705"] = 729,["706"] = 730,["707"] = 731,["708"] = 733,["709"] = 734,["711"] = 737,["713"] = 740,["714"] = 741,["715"] = 742,["716"] = 744,["717"] = 745,["719"] = 748,["721"] = 751,["722"] = 752,["723"] = 753,["724"] = 755,["725"] = 756,["727"] = 759,["730"] = 764,["731"] = 765,["732"] = 766,["733"] = 771,["734"] = 687,["735"] = 774,["736"] = 776,["739"] = 780,["742"] = 783,["743"] = 784,["744"] = 785,["745"] = 787,["746"] = 790,["747"] = 791,["750"] = 794,["751"] = 796,["752"] = 798,["753"] = 799,["754"] = 800,["756"] = 774,["757"] = 804,["758"] = 805,["759"] = 806,["760"] = 807,["761"] = 808,["762"] = 809,["763"] = 810,["764"] = 811,["765"] = 812,["766"] = 814,["767"] = 815,["768"] = 816,["771"] = 819,["772"] = 819,["773"] = 820,["774"] = 821,["775"] = 822,["776"] = 823,["777"] = 824,["779"] = 827,["780"] = 828,["781"] = 828,["782"] = 828,["783"] = 828,["784"] = 828,["785"] = 828,["786"] = 828,["787"] = 836,["789"] = 819,["793"] = 842,["794"] = 843,["795"] = 844,["797"] = 847,["798"] = 848,["799"] = 849,["800"] = 850,["801"] = 850,["802"] = 852,["803"] = 854,["804"] = 804,["805"] = 857,["806"] = 858,["807"] = 860,["808"] = 861,["810"] = 863,["811"] = 864,["814"] = 867,["815"] = 870,["816"] = 871,["817"] = 874,["818"] = 874,["819"] = 874,["820"] = 874,["821"] = 874,["822"] = 874,["823"] = 874,["824"] = 874,["825"] = 877,["826"] = 877,["827"] = 877,["828"] = 877,["829"] = 877,["830"] = 877,["831"] = 877,["832"] = 877,["833"] = 878,["834"] = 879,["835"] = 879,["836"] = 879,["837"] = 879,["838"] = 879,["839"] = 879,["840"] = 879,["841"] = 879,["842"] = 879,["843"] = 881,["844"] = 857,["845"] = 884,["846"] = 885,["847"] = 887,["848"] = 888,["849"] = 891,["850"] = 892,["851"] = 892,["852"] = 892,["853"] = 892,["854"] = 892,["855"] = 892,["856"] = 892,["857"] = 892,["858"] = 893,["859"] = 894,["860"] = 895,["863"] = 898,["864"] = 900,["865"] = 901,["868"] = 904,["869"] = 884,["870"] = 910,["871"] = 911,["872"] = 912,["874"] = 910,["875"] = 916,["876"] = 917,["877"] = 918,["878"] = 918,["879"] = 918,["880"] = 918,["881"] = 918,["882"] = 918,["883"] = 918,["884"] = 918,["885"] = 918,["886"] = 918,["887"] = 918,["888"] = 920,["889"] = 921,["890"] = 921,["891"] = 921,["892"] = 921,["893"] = 921,["894"] = 921,["895"] = 921,["896"] = 921,["897"] = 930,["898"] = 930,["899"] = 930,["900"] = 930,["901"] = 916,["902"] = 936,["903"] = 937,["904"] = 938,["905"] = 939,["907"] = 936,["908"] = 943,["909"] = 944,["910"] = 946,["912"] = 946,["914"] = 947,["915"] = 948,["917"] = 952,["918"] = 953,["919"] = 954,["922"] = 957,["923"] = 958,["924"] = 959,["925"] = 960,["926"] = 961,["927"] = 962,["928"] = 963,["929"] = 963,["930"] = 963,["931"] = 963,["932"] = 963,["933"] = 963,["934"] = 963,["935"] = 964,["936"] = 965,["937"] = 968,["938"] = 969,["939"] = 970,["942"] = 973,["943"] = 974,["944"] = 975,["945"] = 975,["946"] = 975,["947"] = 975,["948"] = 975,["949"] = 975,["950"] = 975,["951"] = 977,["952"] = 978,["955"] = 982,["956"] = 984,["957"] = 985,["958"] = 987,["959"] = 989,["960"] = 993,["961"] = 993,["962"] = 993,["963"] = 993,["964"] = 993,["965"] = 993,["966"] = 993,["967"] = 993,["968"] = 996,["969"] = 996,["970"] = 996,["971"] = 996,["972"] = 996,["973"] = 996,["974"] = 996,["975"] = 999,["976"] = 1003,["977"] = 1003,["978"] = 1003,["979"] = 1003,["980"] = 1003,["981"] = 1003,["982"] = 1003,["983"] = 1003,["984"] = 1004,["985"] = 1005,["986"] = 1005,["987"] = 1005,["988"] = 1005,["989"] = 1005,["990"] = 1005,["991"] = 1005,["992"] = 1005,["993"] = 1005,["994"] = 943});
local ____exports = {}
local ____Teams = require("Teams")
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
function Overthrow.prototype.____constructor(self)
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
    self.tier1ItemBucket = {}
    self.tier2ItemBucket = {}
    self.tier3ItemBucket = {}
    self.tier4ItemBucket = {}
    self.tier5ItemBucket = {}
    self.nNextSpawnItemNumber = 1
    self.nMaxItemSpawns = 30
    self.spawnTime = 60
    self.warnTime = 7
    self.hasWarnedSpawn = false
    self.itemSpawnLocations = {}
    self.itemSpawnLocationsInUse = {}
    self.itemSpawnLocation = Entities:FindByName(nil, "greevil")
    self.itemSpawnIndex = 1
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
    self:SetUpFountains()
    self:CustomSpawnCamps()
    ListenToGameEvent("dota_npc_goal_reached", self.OnNpcGoalReached, self)
    GameRules:GetGameModeEntity():SetExecuteOrderFilter(
        function(____, event) return self:ExecuteOrderFilter(event) end,
        self
    )
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
        repeat
            local ____switch53 = pickedItem:GetAbilityName()
            local ____cond53 = ____switch53 == "item_bag_of_gold"
            if ____cond53 then
                do
                    local hero = EntIndexToHScript(filterTable.units["0"])
                    if hero == nil or not hero:IsRealHero() then
                        return false
                    end
                    break
                end
            end
            ____cond53 = ____cond53 or ____switch53 == "item_treasure_chest"
            if ____cond53 then
                do
                    local player = PlayerResource:GetPlayer(filterTable.issuer_player_id_const)
                    if player == nil then
                        return true
                    end
                    local hero = player:GetAssignedHero()
                    local bAllowPickup = false
                    local hNeutralItem = hero:GetItemInSlot(16)
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
                    break
                end
            end
        until true
    end
    return true
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
        self:ThinkSpecialItemDrop()
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
        local ____switch111 = name
        local ____cond111 = ____switch111 == "item_bag_of_gold"
        if ____cond111 then
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
        ____cond111 = ____cond111 or ____switch111 == "item_treasure_chest"
        if ____cond111 then
            do
                local hContainer = item:GetContainer()
                local function func()
                    __TS__ArrayForEach(
                        self.itemSpawnLocationsInUse,
                        function(____, v, k)
                            if v.hDrop == hContainer then
                                print("^^^DROP CONTAINER!")
                                if v.hItemDestinationRevealer ~= nil then
                                    v.hItemDestinationRevealer:RemoveSelf()
                                    if v.nItemDestinationParticles ~= nil then
                                        ParticleManager:DestroyParticle(v.nItemDestinationParticles, false)
                                    end
                                    DoEntFire(
                                        v.world_effects_name,
                                        "Stop",
                                        "0",
                                        0,
                                        self,
                                        self
                                    )
                                end
                                local ____self_itemSpawnLocations_0 = self.itemSpawnLocations
                                ____self_itemSpawnLocations_0[#____self_itemSpawnLocations_0 + 1] = v
                                __TS__ArraySplice(self.itemSpawnLocationsInUse, k, 1)
                                return
                            end
                        end
                    )
                end
                func(nil)
                self:SpecialItemAdd(event)
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
function Overthrow.prototype.PickRandomShuffle(self, reference_list, bucket)
    if #bucket == 0 then
        __TS__ArrayForEach(
            reference_list,
            function(____, v, k)
                local ____v_5 = v
                bucket[k + 1] = ____v_5
                return ____v_5
            end
        )
    end
    local pick_index = RandomInt(0, #bucket - 1)
    local result = bucket[pick_index + 1]
    __TS__ArraySplice(bucket, pick_index, 1)
    return result
end
function Overthrow.prototype.SpecialItemAdd(self, event)
    local item = EntIndexToHScript(event.ItemEntityIndex)
    local owner = EntIndexToHScript(event.HeroEntityIndex)
    if owner == nil then
        print("SpecialItemAdd owner undefined")
        return
    end
    local hero = owner:GetClassname()
    local ownerTeam = owner:GetTeamNumber()
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
    __TS__ArraySort(
        sortedTeams,
        function(____, a, b) return b.teamScore - a.teamScore end
    )
    local leader = sortedTeams[1].teamID
    local lastPlace = sortedTeams[#sortedTeams].teamID
    local tableindex = 0
    local t1 = self:PickRandomShuffle(GameConfig.t1BonusItems, self.tier1ItemBucket)
    local t2 = self:PickRandomShuffle(GameConfig.t2BonusItems, self.tier2ItemBucket)
    local t3 = self:PickRandomShuffle(GameConfig.t3BonusItems, self.tier3ItemBucket)
    local t4 = self:PickRandomShuffle(GameConfig.t4BonusItems, self.tier4ItemBucket)
    local t5 = self:PickRandomShuffle(GameConfig.t5BonusItems, self.tier5ItemBucket)
    local spawnedItem = ""
    local nLeaderKills = GetTeamHeroKills(leader)
    if nLeaderKills <= 5 then
        spawnedItem = t1
    elseif nLeaderKills > 5 and nLeaderKills <= 13 then
        if ownerTeam == leader and self.leadingTeamScore - self.runnerupTeamScore > 3 then
            spawnedItem = t1
        elseif ownerTeam == lastPlace then
            spawnedItem = t3
        else
            spawnedItem = t2
        end
    elseif nLeaderKills > 13 and nLeaderKills <= 21 then
        if ownerTeam == leader and self.leadingTeamScore - self.runnerupTeamScore > 3 then
            spawnedItem = t2
        elseif ownerTeam == lastPlace then
            spawnedItem = t4
        else
            spawnedItem = t3
        end
    elseif nLeaderKills > 21 then
        if ownerTeam == leader and self.leadingTeamScore - self.runnerupTeamScore > 3 then
            spawnedItem = t3
        elseif ownerTeam == lastPlace then
            spawnedItem = t5
        else
            spawnedItem = t4
        end
    end
    owner:AddItemByName(spawnedItem)
    EmitGlobalSound("Overthrow.Item.Claimed")
    local overthrow_item_drop = {hero_id = hero, dropped_item = spawnedItem}
    CustomGameEventManager:Send_ServerToAllClients("overthrow_item_drop", overthrow_item_drop)
end
function Overthrow.prototype.ThinkSpecialItemDrop(self)
    if self.nNextSpawnItemNumber >= self.nMaxItemSpawns then
        return
    end
    if nCOUNTDOWNTIMER < 20 then
        return
    end
    local t = GameRules:GetDOTATime(false, false)
    local tSpawn = self.spawnTime * self.nNextSpawnItemNumber
    local tWarn = tSpawn - self.warnTime
    if not self.hasWarnedSpawn and t >= tWarn then
        if not self:WarnItem() then
            self.nNextSpawnItemNumber = self.nNextSpawnItemNumber + 1
            return
        end
        self.hasWarnedSpawn = true
    elseif t >= tSpawn then
        self:SpawnItem()
        self.nNextSpawnItemNumber = self.nNextSpawnItemNumber + 1
        self.hasWarnedSpawn = false
    end
end
function Overthrow.prototype.PlanNextSpawn(self)
    print("PlanNextSpawn")
    if self.itemSpawnLocations == nil or #self.itemSpawnLocations == 0 then
        self.itemSpawnLocations = {}
        self.itemSpawnLocationsInUse = {}
        local nMaxSpawns = 8
        if GetMapName() == "desert_quintet" then
            print("map is desert_quintet")
            nMaxSpawns = 6
        elseif GetMapName() == "temple_quartet" then
            print("map is temple_quartet")
            nMaxSpawns = 4
        end
        do
            local i = 0
            while i < nMaxSpawns do
                local spawnName = "item_spawn_" .. tostring(i)
                print("^^^SEARCHING FOR SPAWN POINT NAMED = " .. spawnName)
                local hSpawnLocation = Entities:FindByName(nil, spawnName)
                if hSpawnLocation == nil then
                    print("^^^MISSING SPAWN LOCATION = " .. spawnName)
                else
                    local newSpawnLocation = {
                        hSpawnLocation = hSpawnLocation,
                        path_track_name = "item_spawn_" .. tostring(i),
                        world_effects_name = "item_spawn_particle_" .. tostring(i),
                        hDrop = nil,
                        hItemDestinationRevealer = nil,
                        nItemDestinationParticles = nil
                    }
                    self.itemSpawnLocations[i + 1] = newSpawnLocation
                end
                i = i + 1
            end
        end
    end
    if #self.itemSpawnLocations <= 0 then
        print("RAN OUT OF SPAWN LOCATIONS!")
        return false
    end
    local r = RandomInt(0, #self.itemSpawnLocations - 1)
    local spawnPoint = self.itemSpawnLocations[r + 1]
    __TS__ArraySplice(self.itemSpawnLocations, r, 1)
    local ____self_itemSpawnLocationsInUse_6 = self.itemSpawnLocationsInUse
    ____self_itemSpawnLocationsInUse_6[#____self_itemSpawnLocationsInUse_6 + 1] = spawnPoint
    self.hCurrentItemSpawnLocation = spawnPoint
    return true
end
function Overthrow.prototype.WarnItem(self)
    print("WarnItem")
    if not self:PlanNextSpawn() then
        return false
    end
    if self.hCurrentItemSpawnLocation == nil then
        print("WarnItem: this.hCurrentItemSpawnLocation undefined")
        return
    end
    local spawnLocation = self.hCurrentItemSpawnLocation.hSpawnLocation:GetAbsOrigin()
    CustomGameEventManager:Send_ServerToAllClients("item_will_spawn", {spawn_location = spawnLocation})
    EmitGlobalSound("Overthrow.Item.Warning")
    DoEntFire(
        self.hCurrentItemSpawnLocation.world_effects_name,
        "Start",
        "0",
        0,
        self,
        self
    )
    self.hItemDestinationRevealer = CreateUnitByName(
        "npc_vision_revealer",
        spawnLocation,
        false,
        nil,
        nil,
        DOTA_TEAM_GOODGUYS
    )
    self.nItemDestinationParticles = ParticleManager:CreateParticle("particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", PATTACH_ABSORIGIN, self.hItemDestinationRevealer)
    ParticleManager:SetParticleControlEnt(
        self.nItemDestinationParticles,
        PATTACH_ABSORIGIN,
        self.hItemDestinationRevealer,
        PATTACH_ABSORIGIN,
        "attach_origin",
        self.hItemDestinationRevealer:GetAbsOrigin(),
        true
    )
    return true
end
function Overthrow.prototype.SpawnItem(self)
    print("SpawnItem")
    CustomGameEventManager:Send_ServerToAllClients("item_has_spawned", {})
    EmitGlobalSound("Overthrow.Item.Spawn")
    local startLocation = Vector(0, 0, 700)
    local treasureCourier = CreateUnitByName(
        "npc_dota_treasure_courier",
        startLocation,
        true,
        nil,
        nil,
        DOTA_TEAM_NEUTRALS
    )
    local treasureAbility = treasureCourier:FindAbilityByName("dota_ability_treasure_courier")
    if treasureAbility == nil then
        print("treasureAbility undefined")
        return
    end
    treasureAbility:SetLevel(1)
    if self.hCurrentItemSpawnLocation == nil then
        print("SpawnItem: this.hCurrentItemSpawnLocation undefined")
        return
    end
    treasureCourier:SetInitialGoalEntity(self.hCurrentItemSpawnLocation.hSpawnLocation)
end
function Overthrow.prototype.ForceSpawnItem(self)
    if self:WarnItem() then
        self:SpawnItem()
    end
end
function Overthrow.prototype.KnockBackFromTreasure(self, center, radius, knockback_duration, knockback_distance, knockback_height)
    local targetType = bit.bor(DOTA_UNIT_TARGET_CREEP, DOTA_UNIT_TARGET_HERO)
    local knockBackUnits = FindUnitsInRadius(
        DOTA_TEAM_NOTEAM,
        center,
        nil,
        radius,
        DOTA_UNIT_TARGET_TEAM_BOTH,
        targetType,
        DOTA_UNIT_TARGET_FLAG_NONE,
        FIND_ANY_ORDER,
        false
    )
    local modifierKnockback = {
        center_x = center.x,
        center_y = center.y,
        center_z = center.z,
        duration = knockback_duration,
        knockback_duration = knockback_duration,
        knockback_distance = knockback_distance,
        knockback_height = knockback_height
    }
    __TS__ArrayForEach(
        knockBackUnits,
        function(____, unit) return unit:AddNewModifier(unit, nil, "modifier_knockback", modifierKnockback) end
    )
end
function Overthrow.prototype.OnNpcGoalReached(self, event)
    local npc = EntIndexToHScript(event.npc_entindex)
    if npc:GetUnitName() == "npc_dota_treasure_courier" then
        self:TreasureDrop(npc)
    end
end
function Overthrow.prototype.TreasureDrop(self, treasureCourier)
    print("TreasureDrop")
    local ____opt_7 = self.hItemDestinationRevealer
    if ____opt_7 ~= nil then
        ____opt_7:RemoveSelf()
    end
    if self.nItemDestinationParticles ~= nil then
        ParticleManager:DestroyParticle(self.nItemDestinationParticles, false)
    end
    local treasureCourierInitialGoalEntity = treasureCourier:GetInitialGoalEntity()
    if treasureCourierInitialGoalEntity == nil then
        print("TreasureDrop treasureCourier.GetInitialGoalEntity() undefined")
        return
    end
    local spawnPoint = treasureCourierInitialGoalEntity:GetAbsOrigin()
    spawnPoint.z = 400
    local fxPoint = treasureCourierInitialGoalEntity:GetAbsOrigin()
    fxPoint.z = 400
    local deathEffects = ParticleManager:CreateParticle("particles/treasure_courier_death.vpcf", PATTACH_CUSTOMORIGIN, nil)
    ParticleManager:SetParticleControl(deathEffects, 0, fxPoint)
    ParticleManager:SetParticleControlOrientation(
        deathEffects,
        0,
        treasureCourier:GetForwardVector(),
        treasureCourier:GetRightVector(),
        treasureCourier:GetUpVector()
    )
    EmitGlobalSound("lockjaw_Courier.Impact")
    EmitGlobalSound("lockjaw_Courier.gold_big")
    local newItem = CreateItem("item_treasure_chest", nil, nil)
    if newItem == nil then
        print("TreasureDrop undefined")
        return
    end
    local drop = CreateItemOnPositionForLaunch(spawnPoint, newItem)
    drop:SetForwardVector(treasureCourier:GetRightVector())
    newItem:LaunchLootInitialHeight(
        false,
        0,
        50,
        0.25,
        spawnPoint
    )
    if self.hCurrentItemSpawnLocation == nil then
        print("TreasureDrop: this.hCurrentItemSpawnLocation undefined")
        return
    end
    self.hCurrentItemSpawnLocation.hDrop = drop
    print("^^^ITEM SPAWN LOCATIONS")
    local temp = ""
    print(self.itemSpawnLocations)
    print("^^^ITEM SPAWN LOCATIONS IN USE")
    DoEntFire(
        "item_spawn_particle_" .. tostring(self.itemSpawnIndex),
        "stopplayendcap",
        "0",
        0,
        self,
        self
    )
    self:KnockBackFromTreasure(
        spawnPoint,
        375,
        0.25,
        400.1,
        100
    )
    UTIL_Remove(treasureCourier)
    self.hCurrentItemSpawnLocation.hItemDestinationRevealer = CreateUnitByName(
        "npc_treasure_revealer",
        self.hCurrentItemSpawnLocation.hSpawnLocation:GetAbsOrigin(),
        false,
        nil,
        nil,
        DOTA_TEAM_GOODGUYS
    )
    self.hCurrentItemSpawnLocation.nItemDestinationParticles = ParticleManager:CreateParticle("particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", PATTACH_ABSORIGIN, self.hCurrentItemSpawnLocation.hItemDestinationRevealer)
    ParticleManager:SetParticleControlEnt(
        self.hCurrentItemSpawnLocation.nItemDestinationParticles,
        PATTACH_ABSORIGIN,
        self.hCurrentItemSpawnLocation.hItemDestinationRevealer,
        PATTACH_ABSORIGIN,
        "attach_origin",
        self.hCurrentItemSpawnLocation.hItemDestinationRevealer:GetAbsOrigin(),
        true
    )
end
return ____exports
