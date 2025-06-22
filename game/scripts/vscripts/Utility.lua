local ____lualib = require("lualib_bundle")
local __TS__ArraySlice = ____lualib.__TS__ArraySlice
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 4,["9"] = 5,["10"] = 4,["11"] = 8,["12"] = 9,["13"] = 10,["14"] = 11,["15"] = 12,["16"] = 14,["17"] = 15,["18"] = 16,["19"] = 17,["20"] = 18,["22"] = 21,["23"] = 8,["24"] = 24,["25"] = 25,["26"] = 27,["27"] = 27,["28"] = 27,["29"] = 27,["30"] = 27,["31"] = 27,["32"] = 27,["33"] = 27,["35"] = 31,["36"] = 32,["37"] = 33,["38"] = 34,["39"] = 24});
local ____exports = {}
function ____exports.AddVector(self, v1, v2)
    return Vector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end
function ____exports.ShuffledList(self, orig_list)
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
function ____exports.PickRandomShuffle(self, reference_list, bucket)
    if #bucket == 0 then
        __TS__ArrayForEach(
            reference_list,
            function(____, v, k)
                local ____v_0 = v
                bucket[k + 1] = ____v_0
                return ____v_0
            end
        )
    end
    local pick_index = RandomInt(0, #bucket - 1)
    local result = bucket[pick_index + 1]
    __TS__ArraySplice(bucket, pick_index, 1)
    return result
end
return ____exports
