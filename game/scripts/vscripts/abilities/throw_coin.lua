local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 3,["12"] = 4,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 4,["17"] = 4,["18"] = 3,["21"] = 4});
local ____exports = {}
local ____dota_ts_adapter = require("lib.dota_ts_adapter")
local BaseAbility = ____dota_ts_adapter.BaseAbility
local registerAbility = ____dota_ts_adapter.registerAbility
____exports.ThrowCoin = __TS__Class()
local ThrowCoin = ____exports.ThrowCoin
ThrowCoin.name = "ThrowCoin"
__TS__ClassExtends(ThrowCoin, BaseAbility)
ThrowCoin = __TS__Decorate(
    ThrowCoin,
    ThrowCoin,
    {registerAbility(nil)},
    {kind = "class", name = "ThrowCoin"}
)
____exports.ThrowCoin = ThrowCoin
return ____exports
