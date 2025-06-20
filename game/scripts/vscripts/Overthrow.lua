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
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 15,["20"] = 15,["21"] = 15,["23"] = 18,["24"] = 19,["25"] = 20,["26"] = 21,["27"] = 22,["28"] = 25,["29"] = 26,["30"] = 27,["31"] = 28,["32"] = 29,["33"] = 30,["34"] = 31,["35"] = 32,["36"] = 33,["37"] = 34,["38"] = 35,["39"] = 36,["40"] = 37,["41"] = 39,["42"] = 40,["43"] = 41,["44"] = 42,["45"] = 43,["46"] = 44,["47"] = 45,["48"] = 46,["49"] = 47,["50"] = 48,["51"] = 49,["52"] = 50,["53"] = 51,["54"] = 52,["55"] = 59,["56"] = 60,["57"] = 61,["58"] = 62,["59"] = 63,["60"] = 64,["61"] = 65,["62"] = 66,["63"] = 67,["64"] = 68,["65"] = 70,["66"] = 73,["67"] = 75,["68"] = 76,["69"] = 76,["70"] = 76,["71"] = 76,["72"] = 58,["73"] = 79,["74"] = 80,["75"] = 81,["76"] = 82,["77"] = 83,["78"] = 85,["79"] = 86,["80"] = 87,["81"] = 88,["82"] = 89,["84"] = 92,["85"] = 79,["86"] = 95,["87"] = 99,["88"] = 100,["89"] = 101,["91"] = 108,["92"] = 109,["93"] = 109,["94"] = 109,["95"] = 109,["96"] = 110,["97"] = 112,["98"] = 113,["100"] = 110,["101"] = 126,["102"] = 129,["103"] = 131,["104"] = 132,["105"] = 133,["107"] = 136,["108"] = 138,["109"] = 149,["110"] = 150,["113"] = 152,["114"] = 152,["115"] = 154,["116"] = 152,["119"] = 95,["120"] = 158,["121"] = 160,["122"] = 161,["124"] = 162,["125"] = 162,["126"] = 163,["127"] = 164,["128"] = 166,["129"] = 167,["131"] = 169,["133"] = 162,["136"] = 174,["138"] = 175,["139"] = 175,["140"] = 176,["141"] = 177,["142"] = 178,["143"] = 179,["145"] = 182,["146"] = 183,["148"] = 185,["151"] = 175,["154"] = 193,["155"] = 193,["156"] = 193,["157"] = 195,["158"] = 196,["160"] = 197,["161"] = 197,["162"] = 198,["163"] = 199,["164"] = 200,["165"] = 202,["166"] = 203,["169"] = 197,["172"] = 207,["173"] = 208,["174"] = 209,["176"] = 193,["177"] = 193,["178"] = 213,["179"] = 214,["181"] = 158,["182"] = 217,["183"] = 219,["184"] = 220,["185"] = 222,["186"] = 223,["187"] = 226,["189"] = 217,["190"] = 233,["191"] = 234,["192"] = 237,["193"] = 238,["194"] = 239,["195"] = 240,["196"] = 241,["197"] = 243,["198"] = 244,["199"] = 246,["201"] = 249,["203"] = 252,["204"] = 253,["205"] = 254,["206"] = 255,["207"] = 256,["208"] = 257,["209"] = 258,["210"] = 259,["212"] = 261,["214"] = 264,["215"] = 265,["216"] = 267,["217"] = 269,["219"] = 271,["220"] = 271,["221"] = 272,["222"] = 273,["223"] = 274,["225"] = 271,["228"] = 278,["229"] = 280,["230"] = 281,["231"] = 282,["232"] = 282,["233"] = 282,["234"] = 282,["235"] = 282,["236"] = 282,["237"] = 282,["238"] = 282,["239"] = 284,["241"] = 233,["242"] = 290,["243"] = 291,["244"] = 292,["245"] = 293,["246"] = 290,["247"] = 296,["248"] = 303,["249"] = 304,["250"] = 305,["252"] = 308,["253"] = 309,["254"] = 310,["256"] = 312,["257"] = 315,["258"] = 316,["261"] = 318,["262"] = 319,["265"] = 320,["266"] = 321,["267"] = 322,["272"] = 325,["275"] = 326,["276"] = 327,["277"] = 328,["279"] = 330,["280"] = 334,["281"] = 335,["282"] = 336,["283"] = 337,["285"] = 341,["287"] = 342,["288"] = 342,["289"] = 343,["290"] = 344,["291"] = 345,["293"] = 342,["296"] = 349,["297"] = 350,["300"] = 354,["301"] = 356,["303"] = 360,["304"] = 361,["305"] = 362,["306"] = 363,["307"] = 364,["308"] = 365,["315"] = 371,["316"] = 296,["317"] = 374,["319"] = 375,["320"] = 375,["321"] = 376,["322"] = 377,["323"] = 377,["324"] = 378,["325"] = 378,["326"] = 378,["327"] = 377,["328"] = 377,["329"] = 375,["332"] = 383,["333"] = 383,["334"] = 383,["335"] = 384,["337"] = 374,["338"] = 388,["339"] = 389,["340"] = 388,["341"] = 391,["342"] = 392,["343"] = 393,["344"] = 394,["345"] = 395,["346"] = 396,["347"] = 397,["350"] = 401,["351"] = 406,["352"] = 407,["354"] = 408,["355"] = 408,["356"] = 409,["357"] = 409,["358"] = 409,["359"] = 409,["360"] = 409,["361"] = 409,["362"] = 409,["363"] = 409,["364"] = 409,["365"] = 409,["366"] = 409,["367"] = 409,["368"] = 411,["369"] = 408,["372"] = 391,["373"] = 415,["374"] = 416,["375"] = 417,["376"] = 417,["377"] = 417,["378"] = 418,["379"] = 418,["380"] = 418,["381"] = 418,["382"] = 417,["383"] = 417,["384"] = 422,["385"] = 422,["386"] = 422,["387"] = 422,["388"] = 422,["389"] = 422,["390"] = 424,["391"] = 424,["392"] = 424,["393"] = 425,["394"] = 428,["395"] = 433,["396"] = 424,["397"] = 424,["398"] = 437,["399"] = 439,["400"] = 440,["401"] = 441,["402"] = 442,["403"] = 443,["404"] = 444,["406"] = 447,["408"] = 450,["409"] = 452,["410"] = 453,["412"] = 457,["413"] = 458,["414"] = 459,["415"] = 461,["416"] = 462,["417"] = 463,["418"] = 464,["419"] = 464,["420"] = 464,["421"] = 464,["422"] = 464,["423"] = 464,["424"] = 464,["425"] = 464,["426"] = 464,["427"] = 472,["430"] = 475,["431"] = 476,["432"] = 477,["433"] = 478,["437"] = 482,["438"] = 483,["439"] = 484,["440"] = 485,["444"] = 415,["445"] = 491,["446"] = 492,["447"] = 493,["448"] = 495,["449"] = 496,["450"] = 497,["451"] = 498,["452"] = 499,["453"] = 500,["454"] = 501,["455"] = 508,["456"] = 509,["457"] = 510,["459"] = 491,["460"] = 514,["461"] = 515,["462"] = 517,["463"] = 518,["465"] = 520,["466"] = 521,["467"] = 522,["468"] = 523,["470"] = 525,["471"] = 527,["472"] = 528,["473"] = 529,["474"] = 530,["475"] = 531,["477"] = 533,["478"] = 534,["479"] = 535,["481"] = 538,["482"] = 539,["483"] = 543,["487"] = 549,["488"] = 551,["489"] = 552,["491"] = 554,["492"] = 514,["493"] = 557,["494"] = 557,["495"] = 562,["496"] = 564,["497"] = 565,["500"] = 566,["501"] = 567,["502"] = 569,["503"] = 570,["504"] = 571,["505"] = 572,["507"] = 574,["509"] = 562,["510"] = 579,["511"] = 579,["512"] = 584,["513"] = 585,["514"] = 586,["515"] = 587,["518"] = 588,["519"] = 589,["520"] = 590,["523"] = 592,["524"] = 593,["525"] = 595,["529"] = 596,["530"] = 597,["533"] = 598,["534"] = 598,["535"] = 598,["536"] = 598,["537"] = 598,["538"] = 598,["539"] = 599,["540"] = 599,["541"] = 599,["542"] = 599,["543"] = 599,["544"] = 599,["545"] = 599,["549"] = 602,["552"] = 603,["553"] = 606,["554"] = 607,["555"] = 607,["556"] = 607,["557"] = 608,["558"] = 609,["559"] = 610,["560"] = 611,["561"] = 612,["562"] = 613,["564"] = 615,["565"] = 615,["566"] = 615,["567"] = 615,["568"] = 615,["569"] = 615,["570"] = 615,["571"] = 615,["573"] = 617,["574"] = 617,["575"] = 618,["578"] = 607,["579"] = 607,["580"] = 606,["581"] = 623,["582"] = 625,["587"] = 630,["588"] = 584,["589"] = 634,["590"] = 635,["591"] = 636,["592"] = 638,["593"] = 639,["594"] = 640,["595"] = 640,["596"] = 640,["597"] = 640,["598"] = 640,["599"] = 640,["600"] = 640,["601"] = 640,["603"] = 641,["604"] = 641,["605"] = 641,["606"] = 641,["607"] = 641,["608"] = 641,["610"] = 634,["611"] = 644,["612"] = 645,["615"] = 648,["616"] = 649,["617"] = 649,["618"] = 649,["619"] = 649,["620"] = 649,["621"] = 650,["622"] = 650,["623"] = 650,["624"] = 650,["625"] = 650,["626"] = 651,["627"] = 652,["628"] = 654,["629"] = 655,["630"] = 644,["631"] = 658,["632"] = 659,["633"] = 660,["634"] = 661,["635"] = 662,["636"] = 663,["639"] = 667,["641"] = 668,["642"] = 668,["643"] = 669,["644"] = 668,["647"] = 671,["648"] = 673,["649"] = 658,["650"] = 675,["651"] = 676,["652"] = 678,["653"] = 678,["654"] = 678,["655"] = 678,["656"] = 678,["657"] = 678,["658"] = 678,["659"] = 678,["661"] = 682,["662"] = 683,["663"] = 684,["664"] = 685,["665"] = 675,["666"] = 687,["667"] = 688,["668"] = 689,["669"] = 690,["670"] = 691,["673"] = 694,["674"] = 695,["675"] = 696,["676"] = 699,["677"] = 699,["678"] = 699,["679"] = 701,["680"] = 701,["681"] = 701,["682"] = 701,["683"] = 699,["684"] = 699,["685"] = 706,["686"] = 706,["687"] = 706,["688"] = 706,["689"] = 707,["690"] = 709,["691"] = 711,["692"] = 713,["693"] = 714,["694"] = 714,["695"] = 714,["696"] = 714,["697"] = 714,["698"] = 714,["699"] = 714,["700"] = 714,["701"] = 714,["702"] = 714,["703"] = 727,["704"] = 728,["705"] = 728,["706"] = 728,["707"] = 728,["708"] = 728,["709"] = 728,["710"] = 728,["711"] = 728,["712"] = 728,["713"] = 728,["714"] = 728,["715"] = 728,["716"] = 743,["717"] = 744,["718"] = 744,["719"] = 744,["720"] = 744,["721"] = 744,["722"] = 744,["723"] = 744,["724"] = 744,["725"] = 744,["726"] = 744,["727"] = 744,["728"] = 744,["729"] = 758,["730"] = 759,["731"] = 759,["732"] = 759,["733"] = 759,["734"] = 759,["735"] = 759,["736"] = 759,["737"] = 759,["738"] = 759,["739"] = 759,["740"] = 759,["741"] = 759,["742"] = 773,["743"] = 774,["744"] = 774,["745"] = 774,["746"] = 774,["747"] = 774,["748"] = 774,["749"] = 774,["750"] = 774,["751"] = 774,["752"] = 774,["753"] = 774,["754"] = 774,["755"] = 774,["756"] = 789,["757"] = 790,["758"] = 791,["759"] = 792,["760"] = 793,["761"] = 799,["762"] = 802,["763"] = 804,["764"] = 805,["765"] = 807,["766"] = 808,["767"] = 809,["768"] = 811,["769"] = 812,["771"] = 815,["773"] = 818,["774"] = 819,["775"] = 820,["776"] = 822,["777"] = 823,["779"] = 826,["781"] = 829,["782"] = 830,["783"] = 831,["784"] = 833,["785"] = 834,["787"] = 837,["790"] = 842,["791"] = 843,["792"] = 844,["793"] = 849,["794"] = 687,["795"] = 852,["796"] = 854,["799"] = 858,["802"] = 861,["803"] = 862,["804"] = 863,["805"] = 865,["806"] = 868,["807"] = 869,["810"] = 872,["811"] = 874,["812"] = 876,["813"] = 877,["814"] = 878,["816"] = 852,["817"] = 882,["818"] = 883,["819"] = 884,["820"] = 885,["821"] = 886,["822"] = 887,["823"] = 888,["824"] = 889,["825"] = 890,["826"] = 892,["827"] = 893,["828"] = 894,["831"] = 897,["832"] = 897,["833"] = 898,["834"] = 899,["835"] = 900,["836"] = 901,["837"] = 902,["839"] = 905,["840"] = 906,["841"] = 906,["842"] = 906,["843"] = 906,["844"] = 906,["845"] = 906,["846"] = 906,["847"] = 914,["849"] = 897,["853"] = 920,["854"] = 921,["855"] = 922,["857"] = 925,["858"] = 926,["859"] = 927,["860"] = 928,["861"] = 928,["862"] = 930,["863"] = 932,["864"] = 882,["865"] = 935,["866"] = 936,["867"] = 938,["868"] = 939,["870"] = 941,["871"] = 942,["874"] = 945,["875"] = 948,["876"] = 949,["877"] = 952,["878"] = 952,["879"] = 952,["880"] = 952,["881"] = 952,["882"] = 952,["883"] = 952,["884"] = 952,["885"] = 955,["886"] = 955,["887"] = 955,["888"] = 955,["889"] = 955,["890"] = 955,["891"] = 955,["892"] = 955,["893"] = 956,["894"] = 957,["895"] = 957,["896"] = 957,["897"] = 957,["898"] = 957,["899"] = 957,["900"] = 957,["901"] = 957,["902"] = 957,["903"] = 959,["904"] = 935,["905"] = 962,["906"] = 963,["907"] = 965,["908"] = 966,["909"] = 969,["910"] = 970,["911"] = 970,["912"] = 970,["913"] = 970,["914"] = 970,["915"] = 970,["916"] = 970,["917"] = 970,["918"] = 971,["919"] = 972,["920"] = 973,["923"] = 976,["924"] = 978,["925"] = 979,["928"] = 982,["929"] = 962,["930"] = 988,["931"] = 989,["932"] = 990,["934"] = 988,["935"] = 994,["936"] = 995,["937"] = 996,["938"] = 996,["939"] = 996,["940"] = 996,["941"] = 996,["942"] = 996,["943"] = 996,["944"] = 996,["945"] = 996,["946"] = 996,["947"] = 996,["948"] = 998,["949"] = 999,["950"] = 999,["951"] = 999,["952"] = 999,["953"] = 999,["954"] = 999,["955"] = 999,["956"] = 999,["957"] = 1008,["958"] = 1008,["959"] = 1008,["960"] = 1008,["961"] = 994,["962"] = 1014,["963"] = 1015,["964"] = 1016,["965"] = 1017,["967"] = 1014,["968"] = 1021,["969"] = 1022,["970"] = 1024,["972"] = 1024,["974"] = 1025,["975"] = 1026,["977"] = 1030,["978"] = 1031,["979"] = 1032,["982"] = 1035,["983"] = 1036,["984"] = 1037,["985"] = 1038,["986"] = 1039,["987"] = 1040,["988"] = 1041,["989"] = 1041,["990"] = 1041,["991"] = 1041,["992"] = 1041,["993"] = 1041,["994"] = 1041,["995"] = 1042,["996"] = 1043,["997"] = 1046,["998"] = 1047,["999"] = 1048,["1002"] = 1051,["1003"] = 1052,["1004"] = 1053,["1005"] = 1053,["1006"] = 1053,["1007"] = 1053,["1008"] = 1053,["1009"] = 1053,["1010"] = 1053,["1011"] = 1055,["1012"] = 1056,["1015"] = 1060,["1016"] = 1062,["1017"] = 1063,["1018"] = 1065,["1019"] = 1067,["1020"] = 1071,["1021"] = 1071,["1022"] = 1071,["1023"] = 1071,["1024"] = 1071,["1025"] = 1071,["1026"] = 1071,["1027"] = 1071,["1028"] = 1074,["1029"] = 1074,["1030"] = 1074,["1031"] = 1074,["1032"] = 1074,["1033"] = 1074,["1034"] = 1074,["1035"] = 1077,["1036"] = 1081,["1037"] = 1081,["1038"] = 1081,["1039"] = 1081,["1040"] = 1081,["1041"] = 1081,["1042"] = 1081,["1043"] = 1081,["1044"] = 1082,["1045"] = 1083,["1046"] = 1083,["1047"] = 1083,["1048"] = 1083,["1049"] = 1083,["1050"] = 1083,["1051"] = 1083,["1052"] = 1083,["1053"] = 1083,["1054"] = 1021});
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
