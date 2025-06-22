local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 2,["11"] = 2,["12"] = 3,["13"] = 3,["14"] = 4,["15"] = 4,["16"] = 6,["17"] = 15,["18"] = 16,["19"] = 15,["21"] = 18,["22"] = 19,["23"] = 19,["24"] = 19,["25"] = 19,["26"] = 83,["27"] = 88,["28"] = 88,["29"] = 88,["30"] = 88,["31"] = 88,["32"] = 89,["33"] = 89,["34"] = 89,["35"] = 89,["36"] = 89,["37"] = 90,["38"] = 90,["39"] = 90,["40"] = 90,["41"] = 90,["42"] = 93,["43"] = 93,["44"] = 93,["45"] = 94,["46"] = 97,["47"] = 98,["48"] = 106,["49"] = 107,["50"] = 108,["52"] = 93,["53"] = 93,["54"] = 82,["55"] = 21,["56"] = 23,["57"] = 24,["58"] = 26,["59"] = 29,["60"] = 30,["61"] = 31,["62"] = 34,["63"] = 35,["64"] = 36,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 40,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 46,["73"] = 47,["74"] = 48,["75"] = 49,["76"] = 52,["77"] = 53,["78"] = 54,["79"] = 57,["80"] = 60,["81"] = 61,["82"] = 21,["83"] = 64,["84"] = 66,["85"] = 64,["86"] = 72,["88"] = 74,["89"] = 74,["90"] = 75,["91"] = 74,["94"] = 78,["95"] = 80,["96"] = 72,["97"] = 116,["98"] = 117,["99"] = 119,["100"] = 122,["101"] = 123,["102"] = 124,["103"] = 125,["104"] = 128,["105"] = 129,["106"] = 130,["107"] = 130,["108"] = 130,["109"] = 130,["110"] = 130,["111"] = 130,["112"] = 131,["113"] = 133,["114"] = 136,["115"] = 137,["116"] = 116,["117"] = 143,["118"] = 144,["119"] = 143,["120"] = 147,["121"] = 148,["122"] = 150,["123"] = 162,["125"] = 174,["126"] = 176,["127"] = 176,["128"] = 176,["129"] = 176,["131"] = 147,["132"] = 180,["133"] = 181,["134"] = 180,["135"] = 187,["136"] = 188,["137"] = 187,["138"] = 193,["139"] = 195,["140"] = 197,["141"] = 198,["142"] = 200,["145"] = 193,["146"] = 206,["147"] = 207,["148"] = 208,["149"] = 209,["150"] = 210,["151"] = 211,["152"] = 212,["153"] = 213,["154"] = 214,["155"] = 215,["156"] = 217,["157"] = 218,["158"] = 219,["159"] = 220,["160"] = 222,["161"] = 223,["162"] = 224,["163"] = 226,["164"] = 227,["165"] = 230,["166"] = 232,["167"] = 232,["168"] = 232,["169"] = 232,["170"] = 232,["171"] = 232,["172"] = 232,["173"] = 232,["174"] = 232,["175"] = 232,["176"] = 206,["177"] = 15,["178"] = 16});
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
    self.Overthrow = __TS__New(
        Overthrow,
        self.TeamsSettings:GatherAndRegisterValidTeams()
    )
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
    PrecacheResource("soundfile", "soundevents/soundevents_dota_ui.vsndevts", context)
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
