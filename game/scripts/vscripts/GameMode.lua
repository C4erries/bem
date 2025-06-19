local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 15,["18"] = 16,["19"] = 15,["21"] = 18,["22"] = 19,["23"] = 82,["24"] = 87,["25"] = 87,["26"] = 87,["27"] = 87,["28"] = 87,["29"] = 88,["30"] = 88,["31"] = 88,["32"] = 88,["33"] = 88,["34"] = 89,["35"] = 89,["36"] = 89,["37"] = 89,["38"] = 89,["39"] = 92,["40"] = 92,["41"] = 92,["42"] = 93,["43"] = 96,["44"] = 97,["45"] = 105,["46"] = 106,["47"] = 107,["49"] = 92,["50"] = 92,["51"] = 81,["52"] = 21,["53"] = 23,["54"] = 24,["55"] = 26,["56"] = 29,["57"] = 30,["58"] = 31,["59"] = 34,["60"] = 35,["61"] = 36,["62"] = 37,["63"] = 38,["64"] = 39,["65"] = 40,["66"] = 41,["67"] = 42,["68"] = 43,["69"] = 46,["70"] = 47,["71"] = 48,["72"] = 49,["73"] = 52,["74"] = 53,["75"] = 56,["76"] = 59,["77"] = 60,["78"] = 21,["79"] = 63,["80"] = 65,["81"] = 63,["82"] = 71,["84"] = 73,["85"] = 73,["86"] = 74,["87"] = 73,["90"] = 77,["91"] = 79,["92"] = 71,["93"] = 115,["94"] = 116,["95"] = 117,["96"] = 120,["97"] = 121,["98"] = 122,["99"] = 123,["100"] = 126,["101"] = 127,["102"] = 128,["103"] = 128,["104"] = 128,["105"] = 128,["106"] = 128,["107"] = 128,["108"] = 129,["109"] = 131,["110"] = 134,["111"] = 135,["112"] = 137,["113"] = 115,["114"] = 141,["115"] = 142,["116"] = 141,["117"] = 145,["118"] = 146,["119"] = 148,["120"] = 160,["122"] = 172,["123"] = 174,["124"] = 174,["125"] = 174,["126"] = 174,["128"] = 145,["129"] = 178,["130"] = 179,["131"] = 178,["132"] = 185,["133"] = 186,["134"] = 185,["135"] = 191,["136"] = 193,["137"] = 195,["138"] = 196,["139"] = 198,["142"] = 191,["143"] = 204,["144"] = 205,["145"] = 206,["146"] = 207,["147"] = 208,["148"] = 209,["149"] = 210,["150"] = 211,["151"] = 212,["152"] = 213,["153"] = 215,["154"] = 216,["155"] = 217,["156"] = 218,["157"] = 220,["158"] = 221,["159"] = 222,["160"] = 224,["161"] = 225,["162"] = 228,["163"] = 230,["164"] = 230,["165"] = 230,["166"] = 230,["167"] = 230,["168"] = 230,["169"] = 230,["170"] = 230,["171"] = 230,["172"] = 230,["173"] = 204,["174"] = 15,["175"] = 16});
local ____exports = {}
local ____tstl_2Dutils = require("lib.tstl-utils")
local reloadable = ____tstl_2Dutils.reloadable
local ____modifier_panic = require("modifiers.modifier_panic")
local modifier_panic = ____modifier_panic.modifier_panic
local ____Overthrow = require("Overthrow")
local Overthrow = ____Overthrow.Overthrow
local ____Teams = require("Teams")
local TeamsSettings = ____Teams.TeamsSettings
local heroSelectionTime = 20
____exports.GameMode = __TS__Class()
local GameMode = ____exports.GameMode
GameMode.name = "GameMode"
function GameMode.prototype.____constructor(self)
    self.TeamsSettings = __TS__New(TeamsSettings)
    self.Overthrow = __TS__New(Overthrow)
    self:configure()
    ListenToGameEvent(
        "game_rules_state_change",
        function() return self:OnStateChange() end,
        nil
    )
    ListenToGameEvent(
        "npc_spawned",
        function(event) return self:OnNpcSpawned(event) end,
        nil
    )
    ListenToGameEvent(
        "dota_item_picked_up",
        function(event) return self.Overthrow:OnItemPickedUp(event) end,
        nil
    )
    CustomGameEventManager:RegisterListener(
        "ui_panel_closed",
        function(_, data)
            print(("Player " .. tostring(data.PlayerID)) .. " has closed their UI panel.")
            local player = PlayerResource:GetPlayer(data.PlayerID)
            CustomGameEventManager:Send_ServerToPlayer(player, "example_event", {myNumber = 42, myBoolean = true, myString = "Hello!", myArrayOfNumbers = {1.414, 2.718, 3.142}})
            local hero = player:GetAssignedHero()
            if hero ~= nil then
                hero:AddNewModifier(hero, nil, modifier_panic.name, {duration = 5})
            end
        end
    )
end
function GameMode.Precache(context)
    PrecacheItemByNameSync("item_bag_of_gold", context)
    PrecacheResource("particle", "particles/items2_fx/veil_of_discord.vpcf", context)
    PrecacheItemByNameSync("item_treasure_chest", context)
    PrecacheUnitByNameSync("npc_dota_creature_basic_zombie", context)
    PrecacheUnitByNameSync("npc_dota_creature_berserk_zombie", context)
    PrecacheUnitByNameSync("npc_dota_treasure_courier", context)
    PrecacheResource("particle", "particles/econ/events/nexon_hero_compendium_2014/teleport_end_nexon_hero_cp_2014.vpcf", context)
    PrecacheResource("particle", "particles/leader/leader_overhead.vpcf", context)
    PrecacheResource("particle", "particles/last_hit/last_hit.vpcf", context)
    PrecacheResource("particle", "particles/units/heroes/hero_zuus/zeus_taunt_coin.vpcf", context)
    PrecacheResource("particle", "particles/addons_gameplay/player_deferred_light.vpcf", context)
    PrecacheResource("particle", "particles/items_fx/black_king_bar_avatar.vpcf", context)
    PrecacheResource("particle", "particles/treasure_courier_death.vpcf", context)
    PrecacheResource("particle", "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", context)
    PrecacheResource("particle", "particles/econ/items/lone_druid/lone_druid_cauldron/lone_druid_bear_entangle_dust_cauldron.vpcf", context)
    PrecacheResource("particle", "particles/newplayer_fx/npx_landslide_debris.vpcf", context)
    PrecacheResource("particle_folder", "particles/units/heroes/hero_dragon_knight", context)
    PrecacheResource("particle_folder", "particles/units/heroes/hero_venomancer", context)
    PrecacheResource("particle_folder", "particles/units/heroes/hero_axe", context)
    PrecacheResource("particle_folder", "particles/units/heroes/hero_life_stealer", context)
    PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_dragon_knight.vsndevts", context)
    PrecacheResource("soundfile", "soundevents/soundevents_conquest.vsndevts", context)
    PrecacheResource("soundfile", "soundevents/game_sounds_overthrow.vsndevts", context)
    PrecacheResource("particle", "particles/units/heroes/hero_meepo/meepo_earthbind_projectile_fx.vpcf", context)
    PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_meepo.vsndevts", context)
end
function GameMode.Activate()
    GameRules.Addon = __TS__New(____exports.GameMode)
end
function GameMode.prototype.OnThink(self)
    do
        local nPlayerId = 0
        while nPlayerId < DOTA_MAX_TEAM_PLAYERS do
            self.TeamsSettings:UpdatePlayerColor(nPlayerId)
            nPlayerId = nPlayerId + 1
        end
    end
    self.Overthrow:OverthrowThink()
    return 1
end
function GameMode.prototype.configure(self)
    nCOUNTDOWNTIMER = 901
    GameRules:GetGameModeEntity():SetThink("OnThink", self, "OnThink", 1)
    GameRules:SetCustomGameEndDelay(0)
    GameRules:SetCustomVictoryMessageDuration(10)
    GameRules:SetPreGameTime(10)
    GameRules:SetStrategyTime(10)
    Convars:RegisterCommand("overthrow_force_item_drop", self.Overthrow.ForceSpawnItem, "Force an item drop.", FCVAR_CHEAT)
    Convars:RegisterCommand("overthrow_force_gold_drop", self.Overthrow.SpawnGold, "Force an gold drop.", FCVAR_CHEAT)
    Convars:RegisterCommand(
        "overthrow_set_timer",
        function(...) return self.Overthrow:SetTimer() end,
        "Set the timer.",
        FCVAR_CHEAT
    )
    Convars:SetInt("dota_server_side_animation_heroesonly", 0)
    self:settingGameModeEntity()
    GameRules:SetShowcaseTime(2)
    GameRules:SetHeroSelectionTime(heroSelectionTime)
    self.Overthrow:GatherAndRegisterValidTeams()
end
function GameMode.prototype.SpawnGoldEntity(self, spawnPoint)
    self.Overthrow:SpawnGoldEntity(spawnPoint)
end
function GameMode.prototype.OnStateChange(self)
    self.Overthrow:OnGameRulesStateChange()
    local state = GameRules:State_Get()
    if state == DOTA_GAMERULES_STATE_CUSTOM_GAME_SETUP then
    end
    if state == DOTA_GAMERULES_STATE_PRE_GAME then
        Timers:CreateTimer(
            0.2,
            function() return self:StartGame() end
        )
    end
end
function GameMode.prototype.StartGame(self)
    print("Game starting!")
end
function GameMode.prototype.Reload(self)
    print("Script reloaded!")
end
function GameMode.prototype.OnNpcSpawned(self, event)
    local unit = EntIndexToHScript(event.entindex)
    if unit:IsRealHero() then
        if not unit:HasAbility("meepo_earthbind_ts_example") then
            unit:AddAbility("meepo_earthbind_ts_example")
        end
    end
end
function GameMode.prototype.settingGameModeEntity(self)
    GameRules:GetGameModeEntity()
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_DOUBLEDAMAGE, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_HASTE, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_ILLUSION, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_INVISIBILITY, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_REGENERATION, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_ARCANE, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_BOUNTY, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_SHIELD, false)
    GameRules:GetGameModeEntity():SetLoseGoldOnDeath(false)
    GameRules:GetGameModeEntity():SetCanSellAnywhere(true)
    GameRules:GetGameModeEntity():SetGiveFreeTPOnDeath(false)
    GameRules:SetUseUniversalShopMode(true)
    GameRules:GetGameModeEntity():SetFountainPercentageHealthRegen(0)
    GameRules:GetGameModeEntity():SetFountainPercentageManaRegen(0)
    GameRules:GetGameModeEntity():SetFountainConstantManaRegen(0)
    GameRules:GetGameModeEntity():SetTopBarTeamValuesOverride(true)
    GameRules:GetGameModeEntity():SetTopBarTeamValuesVisible(false)
    GameRules:SetPostGameLayout(DOTA_POST_GAME_LAYOUT_SINGLE_COLUMN)
    GameRules:SetPostGameColumns({
        DOTA_POST_GAME_COLUMN_LEVEL,
        DOTA_POST_GAME_COLUMN_ITEMS,
        DOTA_POST_GAME_COLUMN_KILLS,
        DOTA_POST_GAME_COLUMN_DEATHS,
        DOTA_POST_GAME_COLUMN_ASSISTS,
        DOTA_POST_GAME_COLUMN_NET_WORTH,
        DOTA_POST_GAME_COLUMN_DAMAGE,
        DOTA_POST_GAME_COLUMN_HEALING
    })
end
GameMode = __TS__Decorate(GameMode, GameMode, {reloadable}, {kind = "class", name = "GameMode"})
____exports.GameMode = GameMode
return ____exports
