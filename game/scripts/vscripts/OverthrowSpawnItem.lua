local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__ArrayFindIndex = ____lualib.__TS__ArrayFindIndex
local __TS__ArraySplice = ____lualib.__TS__ArraySplice
local __TS__ArrayForEach = ____lualib.__TS__ArrayForEach
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["9"] = 1,["10"] = 1,["11"] = 2,["12"] = 2,["13"] = 3,["14"] = 3,["15"] = 14,["16"] = 14,["17"] = 14,["19"] = 15,["20"] = 16,["21"] = 17,["22"] = 18,["23"] = 19,["24"] = 20,["25"] = 25,["26"] = 26,["27"] = 27,["28"] = 28,["29"] = 29,["30"] = 14,["31"] = 31,["32"] = 33,["33"] = 34,["34"] = 35,["35"] = 36,["36"] = 36,["37"] = 36,["38"] = 37,["39"] = 37,["40"] = 37,["41"] = 37,["42"] = 38,["43"] = 36,["44"] = 36,["45"] = 40,["46"] = 42,["47"] = 43,["49"] = 45,["50"] = 46,["52"] = 51,["53"] = 51,["54"] = 51,["55"] = 51,["56"] = 51,["57"] = 51,["58"] = 51,["59"] = 51,["60"] = 52,["61"] = 65,["62"] = 31,["63"] = 68,["64"] = 70,["67"] = 73,["68"] = 74,["69"] = 75,["70"] = 77,["71"] = 80,["72"] = 81,["75"] = 84,["76"] = 86,["77"] = 88,["78"] = 89,["79"] = 90,["81"] = 68,["82"] = 94,["83"] = 95,["84"] = 96,["85"] = 96,["86"] = 96,["87"] = 96,["88"] = 96,["89"] = 96,["90"] = 96,["91"] = 96,["92"] = 96,["93"] = 96,["94"] = 96,["95"] = 98,["96"] = 99,["97"] = 99,["98"] = 99,["99"] = 99,["100"] = 99,["101"] = 99,["102"] = 99,["103"] = 99,["104"] = 108,["105"] = 108,["106"] = 108,["107"] = 108,["108"] = 94,["109"] = 111,["110"] = 113,["111"] = 114,["112"] = 115,["113"] = 116,["114"] = 118,["115"] = 120,["116"] = 122,["119"] = 125,["120"] = 125,["121"] = 126,["122"] = 128,["123"] = 129,["124"] = 130,["126"] = 133,["127"] = 134,["128"] = 134,["129"] = 134,["130"] = 134,["131"] = 134,["132"] = 134,["133"] = 134,["134"] = 142,["136"] = 125,["140"] = 155,["141"] = 156,["142"] = 157,["144"] = 160,["145"] = 161,["146"] = 173,["147"] = 175,["148"] = 111,["149"] = 178,["150"] = 179,["151"] = 180,["153"] = 178,["154"] = 184,["155"] = 187,["156"] = 188,["158"] = 190,["159"] = 191,["162"] = 194,["163"] = 197,["164"] = 198,["165"] = 201,["166"] = 201,["167"] = 201,["168"] = 201,["169"] = 201,["170"] = 201,["171"] = 201,["172"] = 201,["173"] = 204,["174"] = 204,["175"] = 204,["176"] = 204,["177"] = 204,["178"] = 204,["179"] = 204,["180"] = 204,["181"] = 205,["182"] = 206,["183"] = 206,["184"] = 206,["185"] = 206,["186"] = 206,["187"] = 206,["188"] = 206,["189"] = 206,["190"] = 206,["191"] = 208,["192"] = 184,["193"] = 212,["194"] = 215,["195"] = 216,["196"] = 219,["197"] = 220,["198"] = 220,["199"] = 220,["200"] = 220,["201"] = 220,["202"] = 220,["203"] = 220,["204"] = 220,["205"] = 221,["206"] = 222,["207"] = 223,["210"] = 226,["211"] = 228,["212"] = 229,["215"] = 232,["216"] = 212,["217"] = 240,["218"] = 243,["220"] = 243,["222"] = 244,["223"] = 245,["225"] = 249,["226"] = 250,["227"] = 251,["230"] = 254,["231"] = 255,["232"] = 256,["233"] = 257,["234"] = 258,["235"] = 259,["236"] = 260,["237"] = 260,["238"] = 260,["239"] = 260,["240"] = 260,["241"] = 260,["242"] = 260,["243"] = 261,["244"] = 262,["245"] = 265,["246"] = 266,["247"] = 267,["250"] = 270,["251"] = 271,["252"] = 272,["253"] = 272,["254"] = 272,["255"] = 272,["256"] = 272,["257"] = 272,["258"] = 272,["259"] = 274,["260"] = 275,["263"] = 279,["264"] = 279,["265"] = 291,["266"] = 291,["267"] = 291,["268"] = 291,["269"] = 291,["270"] = 291,["271"] = 291,["272"] = 291,["273"] = 294,["274"] = 294,["275"] = 294,["276"] = 294,["277"] = 294,["278"] = 294,["279"] = 294,["280"] = 299,["281"] = 303,["282"] = 303,["283"] = 303,["284"] = 303,["285"] = 303,["286"] = 303,["287"] = 303,["288"] = 303,["289"] = 304,["290"] = 305,["291"] = 305,["292"] = 305,["293"] = 305,["294"] = 305,["295"] = 305,["296"] = 305,["297"] = 305,["298"] = 305,["299"] = 307,["300"] = 307,["301"] = 307,["302"] = 308,["303"] = 308,["305"] = 308,["307"] = 309,["308"] = 309,["309"] = 310,["311"] = 307,["312"] = 307,["313"] = 240,["314"] = 315,["315"] = 316,["316"] = 317,["317"] = 318,["318"] = 319,["321"] = 322,["322"] = 324,["323"] = 325,["324"] = 326,["325"] = 327,["326"] = 328,["327"] = 331,["328"] = 332,["329"] = 333,["330"] = 335,["331"] = 336,["332"] = 338,["333"] = 339,["334"] = 341,["335"] = 342,["336"] = 344,["337"] = 345,["339"] = 350,["340"] = 351,["341"] = 352,["342"] = 357,["343"] = 315});
local ____exports = {}
local ____Config = require("Config")
local Config = ____Config.Config
local ____GameConfig = require("GameConfig")
local GameConfig = ____GameConfig.GameConfig
local ____Utility = require("Utility")
local PickRandomShuffle = ____Utility.PickRandomShuffle
____exports.OverthrowSpawnItem = __TS__Class()
local OverthrowSpawnItem = ____exports.OverthrowSpawnItem
OverthrowSpawnItem.name = "OverthrowSpawnItem"
function OverthrowSpawnItem.prototype.____constructor(self)
    self.nNextSpawnItemNumber = 1
    self.nMaxItemSpawns = GameConfig.MAX_BONUS_ITEMS
    self.spawnTime = GameConfig.BONUS_SPAWN_TIME
    self.warnTime = GameConfig.BONUS_WARN_TIME
    self.hasWarnedSpawn = false
    self.itemSpawnLocations = {}
    self.tier1ItemBucket = {}
    self.tier2ItemBucket = {}
    self.tier3ItemBucket = {}
    self.tier4ItemBucket = {}
    self.tier5ItemBucket = {}
end
function OverthrowSpawnItem.prototype.OnTreasureChestPickedUp(self, event)
    local item = EntIndexToHScript(event.ItemEntityIndex)
    local hContainer = item:GetContainer()
    local hContainerIndex = -1
    local pickedUpSpawnLocationIndex = __TS__ArrayFindIndex(
        self.itemSpawnLocations,
        function(____, v, k)
            hContainerIndex = __TS__ArrayFindIndex(
                v.hDrop,
                function(____, drop) return drop == hContainer end
            )
            return hContainerIndex ~= -1
        end
    )
    local pickedUpSpawnLocation = self.itemSpawnLocations[pickedUpSpawnLocationIndex + 1]
    if pickedUpSpawnLocation == nil then
        print("SpawnLocationInUseUndefined: " .. tostring(pickedUpSpawnLocationIndex))
    end
    if pickedUpSpawnLocation.hDrop == nil then
        print("pickedUpSpawnLocation.hDrop undefined")
    end
    DoEntFire(
        pickedUpSpawnLocation.world_effects_name,
        "Stop",
        "0",
        0,
        self,
        self
    )
    __TS__ArraySplice(pickedUpSpawnLocation.hDrop, hContainerIndex, 1)
    self:SpecialItemAdd(event)
end
function OverthrowSpawnItem.prototype.ThinkSpecialItemDrop(self)
    if self.nNextSpawnItemNumber >= self.nMaxItemSpawns then
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
function OverthrowSpawnItem.prototype.KnockBackFromTreasure(self, center, radius, knockback_duration, knockback_distance, knockback_height)
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
function OverthrowSpawnItem.prototype.PlanNextSpawn(self)
    if self.itemSpawnLocations == nil or #self.itemSpawnLocations == 0 then
        self.itemSpawnLocations = {}
        local nMaxSpawns = 8
        if GetMapName() == "desert_quintet" then
            nMaxSpawns = 6
        elseif GetMapName() == "temple_quartet" then
            nMaxSpawns = 4
        end
        do
            local i = 1
            while i <= nMaxSpawns do
                local spawnName = "item_spawn_" .. tostring(i)
                local hSpawnLocation = Entities:FindByName(nil, spawnName)
                if hSpawnLocation == nil then
                    print("^^^MISSING SPAWN LOCATION = " .. spawnName)
                else
                    local newSpawnLocation = {
                        hSpawnLocation = hSpawnLocation,
                        path_track_name = "item_spawn_" .. tostring(i),
                        world_effects_name = "item_spawn_particle_" .. tostring(i),
                        hDrop = {},
                        hItemDestinationRevealer = nil,
                        nItemDestinationParticles = nil
                    }
                    self.itemSpawnLocations[i] = newSpawnLocation
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
    self.hCurrentItemSpawnLocation = spawnPoint
    return true
end
function OverthrowSpawnItem.prototype.ForceSpawnItem(self)
    if self:WarnItem() then
        self:SpawnItem()
    end
end
function OverthrowSpawnItem.prototype.WarnItem(self)
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
function OverthrowSpawnItem.prototype.SpawnItem(self)
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
function OverthrowSpawnItem.prototype.TreasureDrop(self, treasureCourier)
    local ____opt_0 = self.hItemDestinationRevealer
    if ____opt_0 ~= nil then
        ____opt_0:RemoveSelf()
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
    local ____self_hCurrentItemSpawnLocation_hDrop_2 = self.hCurrentItemSpawnLocation.hDrop
    ____self_hCurrentItemSpawnLocation_hDrop_2[#____self_hCurrentItemSpawnLocation_hDrop_2 + 1] = drop
    DoEntFire(
        "item_spawn_particle_1",
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
    Timers:CreateTimer(
        Config.TIME_TO_REMOVE_AIRDROP_REVEALER,
        function()
            local ____opt_5 = self.hCurrentItemSpawnLocation
            local ____opt_3 = ____opt_5 and ____opt_5.hItemDestinationRevealer
            if ____opt_3 ~= nil then
                ____opt_3:RemoveSelf()
            end
            local ____opt_7 = self.hCurrentItemSpawnLocation
            if (____opt_7 and ____opt_7.nItemDestinationParticles) ~= nil then
                ParticleManager:DestroyParticle(self.hCurrentItemSpawnLocation.nItemDestinationParticles, false)
            end
        end
    )
end
function OverthrowSpawnItem.prototype.SpecialItemAdd(self, event)
    local item = EntIndexToHScript(event.ItemEntityIndex)
    local owner = EntIndexToHScript(event.HeroEntityIndex)
    if owner == nil then
        print("SpecialItemAdd owner undefined")
        return
    end
    local hero = owner:GetClassname()
    local t1 = PickRandomShuffle(nil, GameConfig.t1BonusItems, self.tier1ItemBucket)
    local t2 = PickRandomShuffle(nil, GameConfig.t2BonusItems, self.tier2ItemBucket)
    local t3 = PickRandomShuffle(nil, GameConfig.t3BonusItems, self.tier3ItemBucket)
    local t4 = PickRandomShuffle(nil, GameConfig.t4BonusItems, self.tier4ItemBucket)
    local t5 = PickRandomShuffle(nil, GameConfig.t5BonusItems, self.tier5ItemBucket)
    local spawnedItem = ""
    if GameRules:GetDOTATime(false, false) <= GameConfig.T2_ITEMS_TIME then
        spawnedItem = t1
    elseif GameRules:GetDOTATime(false, false) > GameConfig.T2_ITEMS_TIME and GameRules:GetDOTATime(false, false) <= GameConfig.T3_ITEMS_TIME then
        spawnedItem = t2
    elseif GameRules:GetDOTATime(false, false) > GameConfig.T3_ITEMS_TIME and GameRules:GetDOTATime(false, false) <= GameConfig.T4_ITEMS_TIME then
        spawnedItem = t3
    elseif GameRules:GetDOTATime(false, false) > GameConfig.T4_ITEMS_TIME and GameRules:GetDOTATime(false, false) <= GameConfig.T5_ITEMS_TIME then
        spawnedItem = t4
    elseif GameRules:GetDOTATime(false, false) > GameConfig.T5_ITEMS_TIME then
        spawnedItem = t5
    end
    owner:AddItemByName(spawnedItem)
    EmitGlobalSound("Overthrow.Item.Claimed")
    local overthrow_item_drop = {hero_id = hero, dropped_item = spawnedItem}
    CustomGameEventManager:Send_ServerToAllClients("overthrow_item_drop", overthrow_item_drop)
end
return ____exports
