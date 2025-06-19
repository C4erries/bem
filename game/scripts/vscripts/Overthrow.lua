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
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["15"] = 1,["16"] = 1,["17"] = 2,["18"] = 2,["19"] = 7,["20"] = 7,["21"] = 7,["23"] = 10,["24"] = 11,["25"] = 12,["26"] = 13,["27"] = 14,["28"] = 17,["29"] = 18,["30"] = 19,["31"] = 20,["32"] = 21,["33"] = 22,["34"] = 23,["35"] = 24,["36"] = 25,["37"] = 26,["38"] = 27,["39"] = 28,["40"] = 29,["41"] = 31,["42"] = 32,["43"] = 33,["44"] = 34,["45"] = 35,["46"] = 39,["47"] = 41,["48"] = 42,["49"] = 43,["50"] = 44,["51"] = 51,["52"] = 52,["53"] = 53,["54"] = 54,["55"] = 55,["56"] = 56,["57"] = 57,["58"] = 58,["59"] = 59,["60"] = 60,["61"] = 62,["62"] = 65,["63"] = 68,["64"] = 68,["65"] = 68,["66"] = 68,["67"] = 50,["68"] = 71,["69"] = 72,["70"] = 73,["71"] = 74,["72"] = 75,["73"] = 77,["74"] = 78,["75"] = 79,["76"] = 80,["77"] = 81,["79"] = 84,["80"] = 71,["81"] = 87,["82"] = 91,["83"] = 92,["84"] = 93,["86"] = 100,["87"] = 101,["88"] = 101,["89"] = 101,["90"] = 101,["91"] = 102,["92"] = 104,["93"] = 105,["95"] = 102,["96"] = 118,["97"] = 121,["98"] = 123,["99"] = 124,["100"] = 125,["102"] = 128,["103"] = 130,["104"] = 141,["105"] = 142,["108"] = 144,["109"] = 144,["110"] = 146,["111"] = 144,["114"] = 87,["115"] = 150,["116"] = 152,["117"] = 153,["119"] = 154,["120"] = 154,["121"] = 155,["122"] = 156,["123"] = 158,["124"] = 159,["126"] = 161,["128"] = 154,["131"] = 166,["133"] = 167,["134"] = 167,["135"] = 168,["136"] = 169,["137"] = 170,["138"] = 171,["140"] = 174,["141"] = 175,["143"] = 177,["146"] = 167,["149"] = 185,["150"] = 185,["151"] = 185,["152"] = 187,["153"] = 188,["155"] = 189,["156"] = 189,["157"] = 190,["158"] = 191,["159"] = 192,["160"] = 194,["161"] = 195,["164"] = 189,["167"] = 199,["168"] = 200,["169"] = 201,["171"] = 185,["172"] = 185,["173"] = 205,["174"] = 206,["176"] = 150,["177"] = 209,["178"] = 211,["179"] = 212,["180"] = 214,["181"] = 215,["182"] = 218,["184"] = 209,["185"] = 225,["186"] = 226,["187"] = 229,["188"] = 230,["189"] = 231,["190"] = 232,["191"] = 233,["192"] = 235,["193"] = 236,["194"] = 238,["196"] = 241,["198"] = 244,["199"] = 245,["200"] = 246,["201"] = 247,["202"] = 248,["203"] = 249,["204"] = 250,["205"] = 251,["207"] = 253,["209"] = 256,["210"] = 257,["211"] = 259,["212"] = 261,["214"] = 263,["215"] = 263,["216"] = 264,["217"] = 265,["218"] = 266,["220"] = 263,["223"] = 270,["224"] = 272,["225"] = 273,["226"] = 274,["227"] = 274,["228"] = 274,["229"] = 274,["230"] = 274,["231"] = 274,["232"] = 274,["233"] = 274,["234"] = 276,["236"] = 225,["237"] = 282,["238"] = 283,["239"] = 284,["240"] = 285,["241"] = 282,["242"] = 288,["243"] = 295,["244"] = 296,["245"] = 297,["247"] = 300,["248"] = 301,["249"] = 302,["251"] = 304,["252"] = 307,["253"] = 308,["256"] = 310,["257"] = 311,["260"] = 312,["261"] = 313,["262"] = 314,["267"] = 317,["270"] = 318,["271"] = 319,["272"] = 320,["274"] = 322,["275"] = 326,["276"] = 327,["277"] = 328,["278"] = 329,["280"] = 333,["282"] = 334,["283"] = 334,["284"] = 335,["285"] = 336,["286"] = 337,["288"] = 334,["291"] = 341,["292"] = 342,["295"] = 346,["296"] = 348,["298"] = 352,["299"] = 353,["300"] = 354,["301"] = 355,["302"] = 356,["303"] = 357,["310"] = 363,["311"] = 288,["312"] = 366,["314"] = 367,["315"] = 367,["316"] = 368,["317"] = 369,["318"] = 369,["319"] = 370,["320"] = 370,["321"] = 370,["322"] = 369,["323"] = 369,["324"] = 367,["327"] = 375,["328"] = 375,["329"] = 375,["330"] = 376,["332"] = 366,["333"] = 380,["334"] = 381,["335"] = 380,["336"] = 383,["337"] = 384,["338"] = 385,["339"] = 386,["340"] = 387,["341"] = 388,["342"] = 389,["345"] = 393,["346"] = 398,["347"] = 399,["349"] = 400,["350"] = 400,["351"] = 401,["352"] = 401,["353"] = 401,["354"] = 401,["355"] = 401,["356"] = 401,["357"] = 401,["358"] = 401,["359"] = 401,["360"] = 401,["361"] = 401,["362"] = 401,["363"] = 403,["364"] = 400,["367"] = 383,["368"] = 407,["369"] = 408,["370"] = 409,["371"] = 410,["372"] = 410,["373"] = 410,["374"] = 410,["375"] = 410,["376"] = 410,["377"] = 410,["379"] = 414,["380"] = 414,["381"] = 414,["382"] = 414,["383"] = 414,["384"] = 414,["385"] = 416,["386"] = 417,["387"] = 420,["388"] = 425,["390"] = 429,["391"] = 431,["392"] = 432,["393"] = 433,["394"] = 434,["395"] = 435,["396"] = 436,["398"] = 439,["400"] = 442,["401"] = 444,["402"] = 445,["404"] = 449,["405"] = 450,["406"] = 451,["407"] = 453,["408"] = 454,["409"] = 455,["410"] = 456,["411"] = 456,["412"] = 456,["413"] = 456,["414"] = 456,["415"] = 456,["416"] = 456,["417"] = 456,["418"] = 456,["419"] = 464,["422"] = 467,["423"] = 468,["424"] = 469,["425"] = 470,["429"] = 474,["430"] = 475,["431"] = 476,["432"] = 477,["436"] = 407,["437"] = 483,["438"] = 484,["439"] = 485,["440"] = 487,["441"] = 488,["442"] = 489,["443"] = 490,["444"] = 491,["445"] = 492,["446"] = 493,["447"] = 500,["448"] = 501,["449"] = 502,["451"] = 483,["452"] = 506,["453"] = 507,["454"] = 509,["455"] = 510,["457"] = 512,["458"] = 513,["459"] = 514,["460"] = 515,["462"] = 517,["463"] = 519,["464"] = 520,["465"] = 521,["466"] = 522,["467"] = 523,["469"] = 525,["470"] = 526,["471"] = 527,["473"] = 530,["474"] = 531,["475"] = 535,["479"] = 541,["480"] = 543,["481"] = 544,["483"] = 546,["484"] = 506,["485"] = 549,["486"] = 549,["487"] = 554,["488"] = 556,["489"] = 557,["492"] = 558,["493"] = 559,["494"] = 561,["495"] = 562,["496"] = 563,["497"] = 564,["499"] = 566,["501"] = 554,["502"] = 571,["503"] = 571,["504"] = 576,["505"] = 577,["506"] = 578,["507"] = 579,["510"] = 580,["511"] = 581,["512"] = 582,["515"] = 584,["516"] = 585,["517"] = 587,["521"] = 588,["522"] = 589,["525"] = 590,["526"] = 590,["527"] = 590,["528"] = 590,["529"] = 590,["530"] = 590,["531"] = 591,["532"] = 591,["533"] = 591,["534"] = 591,["535"] = 591,["536"] = 591,["537"] = 591,["541"] = 594,["544"] = 595,["545"] = 613,["550"] = 618,["551"] = 576,["552"] = 622,["553"] = 623,["554"] = 624,["555"] = 626,["556"] = 627,["557"] = 628,["558"] = 628,["559"] = 628,["560"] = 628,["561"] = 628,["562"] = 628,["563"] = 628,["564"] = 628,["566"] = 629,["567"] = 629,["568"] = 629,["569"] = 629,["570"] = 629,["571"] = 629,["573"] = 622,["574"] = 632,["575"] = 633,["578"] = 636,["579"] = 637,["580"] = 637,["581"] = 637,["582"] = 637,["583"] = 637,["584"] = 638,["585"] = 638,["586"] = 638,["587"] = 638,["588"] = 638,["589"] = 639,["590"] = 640,["591"] = 642,["592"] = 643,["593"] = 632,["594"] = 646,["595"] = 647,["596"] = 648,["597"] = 649,["598"] = 650,["599"] = 651,["602"] = 655,["604"] = 656,["605"] = 656,["606"] = 657,["607"] = 656,["610"] = 659,["611"] = 661,["612"] = 646,["613"] = 663,["614"] = 664,["615"] = 666,["616"] = 666,["617"] = 666,["618"] = 666,["619"] = 666,["620"] = 666,["621"] = 666,["622"] = 666,["624"] = 670,["625"] = 671,["626"] = 672,["627"] = 673,["628"] = 663,["629"] = 675,["630"] = 676,["631"] = 677,["632"] = 678,["633"] = 679,["636"] = 682,["637"] = 683,["638"] = 684,["639"] = 685,["640"] = 685,["641"] = 685,["642"] = 686,["643"] = 686,["644"] = 686,["645"] = 686,["647"] = 690,["648"] = 690,["649"] = 690,["650"] = 690,["651"] = 691,["652"] = 692,["653"] = 694,["654"] = 696,["655"] = 697,["656"] = 697,["657"] = 697,["658"] = 697,["659"] = 697,["660"] = 697,["661"] = 697,["662"] = 697,["663"] = 697,["664"] = 697,["665"] = 710,["666"] = 711,["667"] = 711,["668"] = 711,["669"] = 711,["670"] = 711,["671"] = 711,["672"] = 711,["673"] = 711,["674"] = 711,["675"] = 711,["676"] = 711,["677"] = 711,["678"] = 726,["679"] = 727,["680"] = 727,["681"] = 727,["682"] = 727,["683"] = 727,["684"] = 727,["685"] = 727,["686"] = 727,["687"] = 727,["688"] = 727,["689"] = 727,["690"] = 727,["691"] = 741,["692"] = 742,["693"] = 742,["694"] = 742,["695"] = 742,["696"] = 742,["697"] = 742,["698"] = 742,["699"] = 742,["700"] = 742,["701"] = 742,["702"] = 742,["703"] = 742,["704"] = 756,["705"] = 757,["706"] = 757,["707"] = 757,["708"] = 757,["709"] = 757,["710"] = 757,["711"] = 757,["712"] = 757,["713"] = 757,["714"] = 757,["715"] = 757,["716"] = 757,["717"] = 757,["718"] = 772,["719"] = 773,["720"] = 774,["721"] = 775,["722"] = 776,["723"] = 782,["724"] = 785,["725"] = 787,["726"] = 788,["727"] = 790,["728"] = 791,["729"] = 792,["730"] = 794,["731"] = 795,["733"] = 798,["735"] = 801,["736"] = 802,["737"] = 803,["738"] = 805,["739"] = 806,["741"] = 809,["743"] = 812,["744"] = 813,["745"] = 814,["746"] = 816,["747"] = 817,["749"] = 820,["752"] = 825,["753"] = 826,["754"] = 827,["755"] = 832,["756"] = 675,["757"] = 835,["758"] = 837,["761"] = 841,["764"] = 844,["765"] = 845,["766"] = 846,["767"] = 848,["768"] = 851,["769"] = 852,["772"] = 855,["773"] = 857,["774"] = 859,["775"] = 860,["776"] = 861,["778"] = 835,["779"] = 865,["780"] = 866,["781"] = 867,["782"] = 868,["783"] = 869,["784"] = 870,["785"] = 871,["786"] = 872,["787"] = 874,["788"] = 875,["789"] = 876,["792"] = 879,["793"] = 879,["794"] = 880,["795"] = 882,["796"] = 883,["797"] = 884,["799"] = 887,["800"] = 888,["801"] = 888,["802"] = 888,["803"] = 888,["804"] = 893,["806"] = 879,["810"] = 899,["811"] = 901,["813"] = 904,["814"] = 905,["815"] = 906,["816"] = 907,["817"] = 909,["818"] = 911,["819"] = 865,["820"] = 914,["821"] = 916,["822"] = 917,["824"] = 920,["825"] = 923,["826"] = 924,["827"] = 927,["828"] = 927,["829"] = 927,["830"] = 927,["831"] = 927,["832"] = 927,["833"] = 927,["834"] = 927,["835"] = 930,["836"] = 930,["837"] = 930,["838"] = 930,["839"] = 930,["840"] = 930,["841"] = 930,["842"] = 930,["843"] = 931,["844"] = 932,["845"] = 932,["846"] = 932,["847"] = 932,["848"] = 932,["849"] = 932,["850"] = 932,["851"] = 932,["852"] = 932,["853"] = 934,["854"] = 914,["855"] = 937,["856"] = 939,["857"] = 940,["858"] = 943,["859"] = 944,["860"] = 944,["861"] = 944,["862"] = 944,["863"] = 944,["864"] = 944,["865"] = 944,["866"] = 944,["867"] = 945,["868"] = 946,["869"] = 947,["872"] = 950,["873"] = 952,["874"] = 937,["875"] = 958,["876"] = 959,["877"] = 960,["879"] = 958,["880"] = 964,["881"] = 965,["882"] = 966,["883"] = 966,["884"] = 966,["885"] = 966,["886"] = 966,["887"] = 966,["888"] = 966,["889"] = 966,["890"] = 966,["891"] = 966,["892"] = 966,["893"] = 968,["894"] = 969,["895"] = 969,["896"] = 969,["897"] = 969,["898"] = 969,["899"] = 969,["900"] = 969,["901"] = 969,["902"] = 978,["903"] = 978,["904"] = 978,["905"] = 978,["906"] = 964,["907"] = 981,["908"] = 984,["910"] = 984,["912"] = 985,["913"] = 986,["915"] = 990,["916"] = 991,["917"] = 992,["920"] = 995,["921"] = 996,["922"] = 997,["923"] = 998,["924"] = 999,["925"] = 1000,["926"] = 1001,["927"] = 1001,["928"] = 1001,["929"] = 1001,["930"] = 1001,["931"] = 1001,["932"] = 1001,["933"] = 1002,["934"] = 1003,["935"] = 1006,["936"] = 1007,["937"] = 1008,["940"] = 1011,["941"] = 1012,["942"] = 1013,["943"] = 1013,["944"] = 1013,["945"] = 1013,["946"] = 1013,["947"] = 1013,["948"] = 1013,["949"] = 1015,["950"] = 1023,["951"] = 1023,["952"] = 1023,["953"] = 1023,["954"] = 1023,["955"] = 1023,["956"] = 1023,["957"] = 1023,["958"] = 1026,["959"] = 1026,["960"] = 1026,["961"] = 1026,["962"] = 1026,["963"] = 1026,["964"] = 1026,["965"] = 1029,["966"] = 1033,["967"] = 1033,["968"] = 1033,["969"] = 1033,["970"] = 1033,["971"] = 1033,["972"] = 1033,["973"] = 1033,["974"] = 1034,["975"] = 1035,["976"] = 1035,["977"] = 1035,["978"] = 1035,["979"] = 1035,["980"] = 1035,["981"] = 1035,["982"] = 1035,["983"] = 1035,["984"] = 981});
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
    self.warnTime = 7
    self.itemSpawnLocations = {}
    self.itemSpawnLocation = Entities:FindByName(nil, "greevil")
    self.itemSpawnIndex = 1
    self.itemSpawnLocationsInUse = {}
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
                local ____v_4 = v
                bucket[k + 1] = ____v_4
                return ____v_4
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
    if self.itemSpawnLocations == nil then
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
                local hSpawnLocation = Entities:FindByName(nil, spawnName)
                if hSpawnLocation == nil then
                    print("^^^MISSING SPAWN LOCATION = " .. spawnName)
                else
                    local newSpawnLocation = {
                        hSpawnLocation = hSpawnLocation,
                        path_track_name = "item_spawn_" .. tostring(i),
                        world_effects_name = "item_spawn_particle_" .. tostring(i)
                    }
                    self.itemSpawnLocations[i + 1] = newSpawnLocation
                end
                i = i + 1
            end
        end
    end
    if #self.itemSpawnLocations <= 0 then
        return false
    end
    local r = RandomInt(0, #self.itemSpawnLocations - 1)
    local spawnPoint = self.itemSpawnLocations[r + 1]
    table.remove(self.itemSpawnLocations, r)
    table.insert(self.itemSpawnLocationsInUse, spawnPoint)
    self.hCurrentItemSpawnLocation = spawnPoint
    return true
end
function Overthrow.prototype.WarnItem(self)
    if not self:PlanNextSpawn() then
        return false
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
    local ____opt_5 = self.hItemDestinationRevealer
    if ____opt_5 ~= nil then
        ____opt_5:RemoveSelf()
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
    self.hCurrentItemSpawnLocation.hDrop = drop
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
