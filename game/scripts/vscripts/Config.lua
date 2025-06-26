local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["6"] = 2,["7"] = 2,["8"] = 2,["10"] = 2,["11"] = 3,["12"] = 4,["13"] = 5,["14"] = 6,["15"] = 7,["16"] = 9,["17"] = 10,["18"] = 11,["19"] = 13,["20"] = 14});
local ____exports = {}
____exports.Config = __TS__Class()
local Config = ____exports.Config
Config.name = "Config"
function Config.prototype.____constructor(self)
end
Config.KILLS_TO_WIN_SINGLES = 20
Config.KILLS_TO_WIN_DUOS = 30
Config.KILLS_TO_WIN_TRIOS = 40
Config.KILLS_TO_WIN_QUADS = 50
Config.KILLS_TO_WIN_QUINTS = 60
Config.COUNTDOWN_ENABLED = false
Config.FILL_WITH_BOTS = true
Config.PRE_GAME_START_TIME = 10
Config.TIME_TO_REMOVE_AIRDROP_REVEALER = 3
Config.USE_TURBO_COURIERS = true
return ____exports
