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
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 18,["24"] = 19,["25"] = 20,["26"] = 21,["27"] = 22,["28"] = 25,["29"] = 26,["30"] = 27,["31"] = 28,["32"] = 29,["33"] = 30,["34"] = 31,["35"] = 32,["36"] = 33,["37"] = 34,["38"] = 35,["39"] = 36,["40"] = 37,["41"] = 39,["42"] = 40,["43"] = 41,["44"] = 42,["45"] = 43,["46"] = 44,["47"] = 45,["48"] = 46,["49"] = 47,["50"] = 48,["51"] = 49,["52"] = 50,["53"] = 51,["54"] = 52,["55"] = 59,["56"] = 60,["57"] = 61,["58"] = 62,["59"] = 63,["60"] = 64,["61"] = 65,["62"] = 66,["63"] = 67,["64"] = 68,["65"] = 70,["66"] = 73,["67"] = 76,["68"] = 76,["69"] = 76,["70"] = 76,["71"] = 58,["72"] = 79,["73"] = 80,["74"] = 81,["75"] = 82,["76"] = 83,["77"] = 85,["78"] = 86,["79"] = 87,["80"] = 88,["81"] = 89,["83"] = 92,["84"] = 79,["85"] = 95,["86"] = 99,["87"] = 100,["88"] = 101,["90"] = 108,["91"] = 109,["92"] = 109,["93"] = 109,["94"] = 109,["95"] = 110,["96"] = 112,["97"] = 113,["99"] = 110,["100"] = 126,["101"] = 129,["102"] = 131,["103"] = 132,["104"] = 133,["106"] = 136,["107"] = 138,["108"] = 149,["109"] = 150,["112"] = 152,["113"] = 152,["114"] = 154,["115"] = 152,["118"] = 95,["119"] = 158,["120"] = 160,["121"] = 161,["123"] = 162,["124"] = 162,["125"] = 163,["126"] = 164,["127"] = 166,["128"] = 167,["130"] = 169,["132"] = 162,["135"] = 174,["137"] = 175,["138"] = 175,["139"] = 176,["140"] = 177,["141"] = 178,["142"] = 179,["144"] = 182,["145"] = 183,["147"] = 185,["150"] = 175,["153"] = 193,["154"] = 193,["155"] = 193,["156"] = 195,["157"] = 196,["159"] = 197,["160"] = 197,["161"] = 198,["162"] = 199,["163"] = 200,["164"] = 202,["165"] = 203,["168"] = 197,["171"] = 207,["172"] = 208,["173"] = 209,["175"] = 193,["176"] = 193,["177"] = 213,["178"] = 214,["180"] = 158,["181"] = 217,["182"] = 219,["183"] = 220,["184"] = 222,["185"] = 223,["186"] = 226,["188"] = 217,["189"] = 233,["190"] = 234,["191"] = 237,["192"] = 238,["193"] = 239,["194"] = 240,["195"] = 241,["196"] = 243,["197"] = 244,["198"] = 246,["200"] = 249,["202"] = 252,["203"] = 253,["204"] = 254,["205"] = 255,["206"] = 256,["207"] = 257,["208"] = 258,["209"] = 259,["211"] = 261,["213"] = 264,["214"] = 265,["215"] = 267,["216"] = 269,["218"] = 271,["219"] = 271,["220"] = 272,["221"] = 273,["222"] = 274,["224"] = 271,["227"] = 278,["228"] = 280,["229"] = 281,["230"] = 282,["231"] = 282,["232"] = 282,["233"] = 282,["234"] = 282,["235"] = 282,["236"] = 282,["237"] = 282,["238"] = 284,["240"] = 233,["241"] = 290,["242"] = 291,["243"] = 292,["244"] = 293,["245"] = 290,["246"] = 296,["247"] = 303,["248"] = 304,["249"] = 305,["251"] = 308,["252"] = 309,["253"] = 310,["255"] = 312,["256"] = 315,["257"] = 316,["260"] = 318,["261"] = 319,["264"] = 320,["265"] = 321,["266"] = 322,["271"] = 325,["274"] = 326,["275"] = 327,["276"] = 328,["278"] = 330,["279"] = 334,["280"] = 335,["281"] = 336,["282"] = 337,["284"] = 341,["286"] = 342,["287"] = 342,["288"] = 343,["289"] = 344,["290"] = 345,["292"] = 342,["295"] = 349,["296"] = 350,["299"] = 354,["300"] = 356,["302"] = 360,["303"] = 361,["304"] = 362,["305"] = 363,["306"] = 364,["307"] = 365,["314"] = 371,["315"] = 296,["316"] = 374,["318"] = 375,["319"] = 375,["320"] = 376,["321"] = 377,["322"] = 377,["323"] = 378,["324"] = 378,["325"] = 378,["326"] = 377,["327"] = 377,["328"] = 375,["331"] = 383,["332"] = 383,["333"] = 383,["334"] = 384,["336"] = 374,["337"] = 388,["338"] = 389,["339"] = 388,["340"] = 391,["341"] = 392,["342"] = 393,["343"] = 394,["344"] = 395,["345"] = 396,["346"] = 397,["349"] = 401,["350"] = 406,["351"] = 407,["353"] = 408,["354"] = 408,["355"] = 409,["356"] = 409,["357"] = 409,["358"] = 409,["359"] = 409,["360"] = 409,["361"] = 409,["362"] = 409,["363"] = 409,["364"] = 409,["365"] = 409,["366"] = 409,["367"] = 411,["368"] = 408,["371"] = 391,["372"] = 415,["373"] = 416,["374"] = 417,["375"] = 418,["376"] = 418,["377"] = 418,["378"] = 418,["379"] = 418,["380"] = 418,["381"] = 418,["383"] = 422,["384"] = 422,["385"] = 422,["386"] = 422,["387"] = 422,["388"] = 422,["389"] = 424,["390"] = 425,["391"] = 428,["392"] = 433,["394"] = 437,["395"] = 439,["396"] = 440,["397"] = 441,["398"] = 442,["399"] = 443,["400"] = 444,["402"] = 447,["404"] = 450,["405"] = 452,["406"] = 453,["408"] = 457,["409"] = 458,["410"] = 459,["411"] = 461,["412"] = 462,["413"] = 463,["414"] = 464,["415"] = 464,["416"] = 464,["417"] = 464,["418"] = 464,["419"] = 464,["420"] = 464,["421"] = 464,["422"] = 464,["423"] = 472,["426"] = 475,["427"] = 476,["428"] = 477,["429"] = 478,["433"] = 482,["434"] = 483,["435"] = 484,["436"] = 485,["440"] = 415,["441"] = 491,["442"] = 492,["443"] = 493,["444"] = 495,["445"] = 496,["446"] = 497,["447"] = 498,["448"] = 499,["449"] = 500,["450"] = 501,["451"] = 508,["452"] = 509,["453"] = 510,["455"] = 491,["456"] = 514,["457"] = 515,["458"] = 517,["459"] = 518,["461"] = 520,["462"] = 521,["463"] = 522,["464"] = 523,["466"] = 525,["467"] = 527,["468"] = 528,["469"] = 529,["470"] = 530,["471"] = 531,["473"] = 533,["474"] = 534,["475"] = 535,["477"] = 538,["478"] = 539,["479"] = 543,["483"] = 549,["484"] = 551,["485"] = 552,["487"] = 554,["488"] = 514,["489"] = 557,["490"] = 557,["491"] = 562,["492"] = 564,["493"] = 565,["496"] = 566,["497"] = 567,["498"] = 569,["499"] = 570,["500"] = 571,["501"] = 572,["503"] = 574,["505"] = 562,["506"] = 579,["507"] = 579,["508"] = 584,["509"] = 585,["510"] = 586,["511"] = 587,["514"] = 588,["515"] = 589,["516"] = 590,["519"] = 592,["520"] = 593,["521"] = 595,["525"] = 596,["526"] = 597,["529"] = 598,["530"] = 598,["531"] = 598,["532"] = 598,["533"] = 598,["534"] = 598,["535"] = 599,["536"] = 599,["537"] = 599,["538"] = 599,["539"] = 599,["540"] = 599,["541"] = 599,["545"] = 602,["548"] = 603,["549"] = 604,["550"] = 605,["551"] = 605,["552"] = 605,["553"] = 606,["554"] = 608,["555"] = 609,["556"] = 610,["557"] = 611,["559"] = 613,["560"] = 613,["561"] = 613,["562"] = 613,["563"] = 613,["564"] = 613,["565"] = 613,["566"] = 613,["568"] = 615,["569"] = 615,["570"] = 616,["573"] = 605,["574"] = 605,["575"] = 604,["576"] = 621,["577"] = 624,["582"] = 629,["583"] = 584,["584"] = 633,["585"] = 634,["586"] = 635,["587"] = 637,["588"] = 638,["589"] = 639,["590"] = 639,["591"] = 639,["592"] = 639,["593"] = 639,["594"] = 639,["595"] = 639,["596"] = 639,["598"] = 640,["599"] = 640,["600"] = 640,["601"] = 640,["602"] = 640,["603"] = 640,["605"] = 633,["606"] = 643,["607"] = 644,["610"] = 647,["611"] = 648,["612"] = 648,["613"] = 648,["614"] = 648,["615"] = 648,["616"] = 649,["617"] = 649,["618"] = 649,["619"] = 649,["620"] = 649,["621"] = 650,["622"] = 651,["623"] = 653,["624"] = 654,["625"] = 643,["626"] = 657,["627"] = 658,["628"] = 659,["629"] = 660,["630"] = 661,["631"] = 662,["634"] = 666,["636"] = 667,["637"] = 667,["638"] = 668,["639"] = 667,["642"] = 670,["643"] = 672,["644"] = 657,["645"] = 674,["646"] = 675,["647"] = 677,["648"] = 677,["649"] = 677,["650"] = 677,["651"] = 677,["652"] = 677,["653"] = 677,["654"] = 677,["656"] = 681,["657"] = 682,["658"] = 683,["659"] = 684,["660"] = 674,["661"] = 686,["662"] = 687,["663"] = 688,["664"] = 689,["665"] = 690,["668"] = 693,["669"] = 694,["670"] = 695,["671"] = 696,["672"] = 696,["673"] = 696,["674"] = 697,["675"] = 697,["676"] = 697,["677"] = 697,["679"] = 701,["680"] = 701,["681"] = 701,["682"] = 701,["683"] = 702,["684"] = 703,["685"] = 705,["686"] = 707,["687"] = 708,["688"] = 708,["689"] = 708,["690"] = 708,["691"] = 708,["692"] = 708,["693"] = 708,["694"] = 708,["695"] = 708,["696"] = 708,["697"] = 721,["698"] = 722,["699"] = 722,["700"] = 722,["701"] = 722,["702"] = 722,["703"] = 722,["704"] = 722,["705"] = 722,["706"] = 722,["707"] = 722,["708"] = 722,["709"] = 722,["710"] = 737,["711"] = 738,["712"] = 738,["713"] = 738,["714"] = 738,["715"] = 738,["716"] = 738,["717"] = 738,["718"] = 738,["719"] = 738,["720"] = 738,["721"] = 738,["722"] = 738,["723"] = 752,["724"] = 753,["725"] = 753,["726"] = 753,["727"] = 753,["728"] = 753,["729"] = 753,["730"] = 753,["731"] = 753,["732"] = 753,["733"] = 753,["734"] = 753,["735"] = 753,["736"] = 767,["737"] = 768,["738"] = 768,["739"] = 768,["740"] = 768,["741"] = 768,["742"] = 768,["743"] = 768,["744"] = 768,["745"] = 768,["746"] = 768,["747"] = 768,["748"] = 768,["749"] = 768,["750"] = 783,["751"] = 784,["752"] = 785,["753"] = 786,["754"] = 787,["755"] = 793,["756"] = 796,["757"] = 798,["758"] = 799,["759"] = 801,["760"] = 802,["761"] = 803,["762"] = 805,["763"] = 806,["765"] = 809,["767"] = 812,["768"] = 813,["769"] = 814,["770"] = 816,["771"] = 817,["773"] = 820,["775"] = 823,["776"] = 824,["777"] = 825,["778"] = 827,["779"] = 828,["781"] = 831,["784"] = 836,["785"] = 837,["786"] = 838,["787"] = 843,["788"] = 686,["789"] = 846,["790"] = 848,["793"] = 852,["796"] = 855,["797"] = 856,["798"] = 857,["799"] = 859,["800"] = 862,["801"] = 863,["804"] = 866,["805"] = 868,["806"] = 870,["807"] = 871,["808"] = 872,["810"] = 846,["811"] = 876,["812"] = 877,["813"] = 878,["814"] = 879,["815"] = 880,["816"] = 881,["817"] = 882,["818"] = 883,["819"] = 884,["820"] = 886,["821"] = 887,["822"] = 888,["825"] = 891,["826"] = 891,["827"] = 892,["828"] = 893,["829"] = 894,["830"] = 895,["831"] = 896,["833"] = 899,["834"] = 900,["835"] = 900,["836"] = 900,["837"] = 900,["838"] = 900,["839"] = 900,["840"] = 900,["841"] = 908,["843"] = 891,["847"] = 914,["848"] = 915,["849"] = 916,["851"] = 919,["852"] = 920,["853"] = 921,["854"] = 922,["855"] = 922,["856"] = 924,["857"] = 926,["858"] = 876,["859"] = 929,["860"] = 930,["861"] = 932,["862"] = 933,["864"] = 935,["865"] = 936,["868"] = 939,["869"] = 942,["870"] = 943,["871"] = 946,["872"] = 946,["873"] = 946,["874"] = 946,["875"] = 946,["876"] = 946,["877"] = 946,["878"] = 946,["879"] = 949,["880"] = 949,["881"] = 949,["882"] = 949,["883"] = 949,["884"] = 949,["885"] = 949,["886"] = 949,["887"] = 950,["888"] = 951,["889"] = 951,["890"] = 951,["891"] = 951,["892"] = 951,["893"] = 951,["894"] = 951,["895"] = 951,["896"] = 951,["897"] = 953,["898"] = 929,["899"] = 956,["900"] = 957,["901"] = 959,["902"] = 960,["903"] = 963,["904"] = 964,["905"] = 964,["906"] = 964,["907"] = 964,["908"] = 964,["909"] = 964,["910"] = 964,["911"] = 964,["912"] = 965,["913"] = 966,["914"] = 967,["917"] = 970,["918"] = 972,["919"] = 973,["922"] = 976,["923"] = 956,["924"] = 982,["925"] = 983,["926"] = 984,["928"] = 982,["929"] = 988,["930"] = 989,["931"] = 990,["932"] = 990,["933"] = 990,["934"] = 990,["935"] = 990,["936"] = 990,["937"] = 990,["938"] = 990,["939"] = 990,["940"] = 990,["941"] = 990,["942"] = 992,["943"] = 993,["944"] = 993,["945"] = 993,["946"] = 993,["947"] = 993,["948"] = 993,["949"] = 993,["950"] = 993,["951"] = 1002,["952"] = 1002,["953"] = 1002,["954"] = 1002,["955"] = 988,["956"] = 1005,["957"] = 1006,["958"] = 1008,["960"] = 1008,["962"] = 1009,["963"] = 1010,["965"] = 1014,["966"] = 1015,["967"] = 1016,["970"] = 1019,["971"] = 1020,["972"] = 1021,["973"] = 1022,["974"] = 1023,["975"] = 1024,["976"] = 1025,["977"] = 1025,["978"] = 1025,["979"] = 1025,["980"] = 1025,["981"] = 1025,["982"] = 1025,["983"] = 1026,["984"] = 1027,["985"] = 1030,["986"] = 1031,["987"] = 1032,["990"] = 1035,["991"] = 1036,["992"] = 1037,["993"] = 1037,["994"] = 1037,["995"] = 1037,["996"] = 1037,["997"] = 1037,["998"] = 1037,["999"] = 1039,["1000"] = 1040,["1003"] = 1044,["1004"] = 1046,["1005"] = 1047,["1006"] = 1049,["1007"] = 1051,["1008"] = 1055,["1009"] = 1055,["1010"] = 1055,["1011"] = 1055,["1012"] = 1055,["1013"] = 1055,["1014"] = 1055,["1015"] = 1055,["1016"] = 1058,["1017"] = 1058,["1018"] = 1058,["1019"] = 1058,["1020"] = 1058,["1021"] = 1058,["1022"] = 1058,["1023"] = 1061,["1024"] = 1065,["1025"] = 1065,["1026"] = 1065,["1027"] = 1065,["1028"] = 1065,["1029"] = 1065,["1030"] = 1065,["1031"] = 1065,["1032"] = 1066,["1033"] = 1067,["1034"] = 1067,["1035"] = 1067,["1036"] = 1067,["1037"] = 1067,["1038"] = 1067,["1039"] = 1067,["1040"] = 1067,["1041"] = 1067,["1042"] = 1005});
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
    for ____, ____value in ipairs(self.m_GatheredShuffledTeams) do
        local _ = ____value[1]
        local team = ____value[2]
        sortedTeams[#sortedTeams + 1] = {
            teamID = team,
            teamScore = GetTeamHeroKills(team)
        }
    end
    __TS__ArraySort(
        sortedTeams,
        function(____, a, b) return b - a end
    )
    local leader = sortedTeams[1].teamID
    local lastPlace = sortedTeams[#sortedTeams + 1].teamID
    local tableindex = 0
    local tier1 = {
        "item_keen_optic",
        "item_broom_handle",
        "item_trusty_shovel",
        "item_arcane_ring",
        "item_chipped_vest",
        "item_possessed_mask",
        "item_mysterious_hat",
        "item_unstable_wand",
        "item_pogo_stick"
    }
    local tier2 = {
        "item_ring_of_aquila",
        "item_nether_shawl",
        "item_dragon_scale",
        "item_pupils_gift",
        "item_vambrace",
        "item_misericorde",
        "item_grove_bow",
        "item_essence_ring",
        "item_paintball",
        "item_bullwhip",
        "item_quicksilver_amulet"
    }
    local tier3 = {
        "item_quickening_charm",
        "item_black_powder_bag",
        "item_spider_legs",
        "item_paladin_sword",
        "item_titan_sliver",
        "item_mind_breaker",
        "item_enchanted_quiver",
        "item_elven_tunic",
        "item_cloak_of_flames",
        "item_ceremonial_robe",
        "item_psychic_headband"
    }
    local tier4 = {
        "item_timeless_relic",
        "item_spell_prism",
        "item_ascetic_cap",
        "item_heavy_blade",
        "item_flicker",
        "item_ninja_gear",
        "item_the_leveller",
        "item_spy_gadget",
        "item_trickster_cloak",
        "item_stormcrafter",
        "item_penta_edged_sword"
    }
    local tier5 = {
        "item_force_boots",
        "item_desolator_2",
        "item_seer_stone",
        "item_mirror_shield",
        "item_apex",
        "item_demonicon",
        "item_fallen_sky",
        "item_force_field",
        "item_pirate_hat",
        "item_ex_machina",
        "item_giants_ring",
        "item_book_of_shadows"
    }
    local t1 = self:PickRandomShuffle(tier1, self.tier1ItemBucket)
    local t2 = self:PickRandomShuffle(tier2, self.tier2ItemBucket)
    local t3 = self:PickRandomShuffle(tier3, self.tier3ItemBucket)
    local t4 = self:PickRandomShuffle(tier4, self.tier4ItemBucket)
    local t5 = self:PickRandomShuffle(tier5, self.tier5ItemBucket)
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
