local ____lualib = require("lualib_bundle")
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["5"] = 1,["6"] = 8,["7"] = 9,["8"] = 10,["10"] = 13,["11"] = 14,["12"] = 15,["14"] = 17,["15"] = 20,["16"] = 21,["19"] = 23,["20"] = 24,["23"] = 25,["24"] = 26,["25"] = 27,["30"] = 30,["33"] = 31,["34"] = 32,["35"] = 33,["37"] = 35,["38"] = 36,["39"] = 37,["41"] = 38,["43"] = 42,["44"] = 42,["45"] = 43,["46"] = 44,["47"] = 45,["50"] = 42,["53"] = 51,["54"] = 53,["56"] = 57,["57"] = 58,["58"] = 59,["59"] = 60,["60"] = 61,["61"] = 62,["68"] = 68,["69"] = 1});
local ____exports = {}
function ____exports.ExecuteOrderFilter(self, filterTable)
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
            local ____switch7 = pickedItem:GetAbilityName()
            local ____cond7 = ____switch7 == "item_bag_of_gold"
            if ____cond7 then
                do
                    local hero = EntIndexToHScript(filterTable.units["0"])
                    if hero == nil or not hero:IsRealHero() then
                        return false
                    end
                    break
                end
            end
            ____cond7 = ____cond7 or ____switch7 == "item_treasure_chest"
            if ____cond7 then
                do
                    local player = PlayerResource:GetPlayer(filterTable.issuer_player_id_const)
                    if player == nil then
                        return true
                    end
                    local hero = EntIndexToHScript(filterTable.units["0"])
                    if hero == nil or not hero:IsRealHero() then
                        return false
                    end
                    local bAllowPickup = false
                    do
                        local nItemSlot = 0
                        while nItemSlot < DOTA_ITEM_INVENTORY_SIZE do
                            local hItem = hero:GetItemInSlot(nItemSlot)
                            if hItem == nil then
                                bAllowPickup = true
                                break
                            end
                            nItemSlot = nItemSlot + 1
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
return ____exports
