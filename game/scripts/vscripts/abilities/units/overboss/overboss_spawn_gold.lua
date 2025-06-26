local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 1,["11"] = 1,["12"] = 1,["13"] = 3,["14"] = 6,["15"] = 7,["16"] = 6,["17"] = 7,["18"] = 10,["19"] = 11,["20"] = 12,["21"] = 10,["22"] = 15,["23"] = 16,["24"] = 15,["25"] = 7,["26"] = 7,["27"] = 7,["28"] = 6,["31"] = 7,["32"] = 22,["33"] = 23,["34"] = 22,["35"] = 23,["36"] = 26,["37"] = 27,["38"] = 26,["39"] = 34,["40"] = 35,["41"] = 36,["43"] = 34,["44"] = 41,["45"] = 42,["48"] = 43,["49"] = 46,["50"] = 47,["51"] = 49,["52"] = 50,["53"] = 51,["54"] = 52,["56"] = 53,["58"] = 41,["59"] = 23,["60"] = 23,["61"] = 23,["62"] = 22,["65"] = 23});
local ____exports = {}
local ____dota_ts_adapter = require("lib.dota_ts_adapter")
local BaseAbility = ____dota_ts_adapter.BaseAbility
local BaseModifier = ____dota_ts_adapter.BaseModifier
local registerAbility = ____dota_ts_adapter.registerAbility
local registerModifier = ____dota_ts_adapter.registerModifier
local GOLD_SPAWN_RATE = 10
____exports.overboss_spawn_gold = __TS__Class()
local overboss_spawn_gold = ____exports.overboss_spawn_gold
overboss_spawn_gold.name = "overboss_spawn_gold"
__TS__ClassExtends(overboss_spawn_gold, BaseAbility)
function overboss_spawn_gold.prototype.GetRate(self)
    local rate = self:GetSpecialValueFor("spawn_rate")
    return rate
end
function overboss_spawn_gold.prototype.GetIntrinsicModifierName(self)
    return "modifier_overboss_spawn_gold"
end
overboss_spawn_gold = __TS__Decorate(
    overboss_spawn_gold,
    overboss_spawn_gold,
    {registerAbility(nil)},
    {kind = "class", name = "overboss_spawn_gold"}
)
____exports.overboss_spawn_gold = overboss_spawn_gold
____exports.modifier_overboss_spawn_gold = __TS__Class()
local modifier_overboss_spawn_gold = ____exports.modifier_overboss_spawn_gold
modifier_overboss_spawn_gold.name = "modifier_overboss_spawn_gold"
__TS__ClassExtends(modifier_overboss_spawn_gold, BaseModifier)
function modifier_overboss_spawn_gold.prototype.CheckState(self)
    return {[MODIFIER_STATE_COMMAND_RESTRICTED] = true}
end
function modifier_overboss_spawn_gold.prototype.OnCreated(self)
    if IsServer() then
        self:StartIntervalThink(GOLD_SPAWN_RATE)
    end
end
function modifier_overboss_spawn_gold.prototype.OnIntervalThink(self)
    if GameRules:State_Get() ~= DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
        return
    end
    local parent = self:GetParent()
    local throwCoin = parent:FindAbilityByName("dota_ability_throw_coin")
    local throwCoinLong = parent:FindAbilityByName("dota_ability_throw_coin_long")
    if throwCoinLong and RandomInt(1, 100) > 80 then
        parent:CastAbilityNoTarget(throwCoinLong, -1)
    elseif throwCoin then
        parent:CastAbilityNoTarget(throwCoin, -1)
    else
        GameRules.Addon:SpawnGoldEntity(Vector(0, 0, 0))
    end
end
modifier_overboss_spawn_gold = __TS__Decorate(
    modifier_overboss_spawn_gold,
    modifier_overboss_spawn_gold,
    {registerModifier(nil)},
    {kind = "class", name = "modifier_overboss_spawn_gold"}
)
____exports.modifier_overboss_spawn_gold = modifier_overboss_spawn_gold
return ____exports
