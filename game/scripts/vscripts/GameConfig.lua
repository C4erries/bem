local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 2,["7"] = 2,["8"] = 2,["10"] = 2,["11"] = 6,["12"] = 6,["13"] = 6,["14"] = 6,["15"] = 6,["16"] = 6,["17"] = 6,["18"] = 15,["19"] = 15,["20"] = 15,["21"] = 15,["22"] = 15,["23"] = 15,["24"] = 15,["25"] = 24,["26"] = 24,["27"] = 24,["28"] = 24,["29"] = 24,["30"] = 24,["31"] = 24,["32"] = 33,["33"] = 33,["34"] = 33,["35"] = 33,["36"] = 33,["37"] = 33,["38"] = 33,["39"] = 42,["40"] = 42,["41"] = 42,["42"] = 42,["43"] = 42,["44"] = 42,["45"] = 42,["46"] = 51,["47"] = 52,["48"] = 53,["49"] = 54,["50"] = 56,["51"] = 57,["52"] = 58,["53"] = 60,["54"] = 61,["55"] = 62,["56"] = 63,["57"] = 64});
local ____exports = {}
____exports.GameConfig = __TS__Class()
local GameConfig = ____exports.GameConfig
GameConfig.name = "GameConfig"
function GameConfig.prototype.____constructor(self)
end
GameConfig.t1BonusItems = {
    "item_quarterstaff",
    "item_blades_of_attack",
    "item_fluffy_hat",
    "item_helm_of_iron_will",
    "item_orb_of_corrosion"
}
GameConfig.t2BonusItems = {
    "item_javelin",
    "item_mithril_hammer",
    "item_point_booster",
    "item_ghost",
    "item_platemail"
}
GameConfig.t3BonusItems = {
    "item_hyperstone",
    "item_ultimate_orb",
    "item_echo_sabre",
    "item_dagon_2",
    "item_kaya"
}
GameConfig.t4BonusItems = {
    "item_moon_shard",
    "item_lotus_orb",
    "item_orchid",
    "item_invis_sword",
    "item_bfury"
}
GameConfig.t5BonusItems = {
    "item_ethereal_blade",
    "item_hurricane_pike",
    "item_greater_crit",
    "item_angels_demise",
    "item_mjollnir"
}
GameConfig.T2_ITEMS_TIME = 420
GameConfig.T3_ITEMS_TIME = 840
GameConfig.T4_ITEMS_TIME = 1260
GameConfig.T5_ITEMS_TIME = 1680
GameConfig.MAX_BONUS_ITEMS = 100
GameConfig.BONUS_SPAWN_TIME = 60
GameConfig.BONUS_WARN_TIME = 7
GameConfig.COIN_MONEY = 200
GameConfig.FAKE_COIN_CHANCE = 5
GameConfig.BOMB_COIN_CHANCE = 3
GameConfig.zondbe_in_camp_min = 3
GameConfig.zondbe_in_camp_max = 10
return ____exports
