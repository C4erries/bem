local ____lualib = require("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 4,["6"] = 5,["7"] = 4});
local ____exports = {}
function ____exports.AddVector(self, v1, v2)
    return Vector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
end
return ____exports
