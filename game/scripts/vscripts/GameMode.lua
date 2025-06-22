local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 8,["19"] = 17,["20"] = 18,["21"] = 17,["23"] = 20,["24"] = 21,["25"] = 21,["26"] = 21,["27"] = 21,["28"] = 84,["29"] = 89,["30"] = 89,["31"] = 89,["32"] = 89,["33"] = 89,["34"] = 90,["35"] = 90,["36"] = 90,["37"] = 90,["38"] = 90,["39"] = 91,["40"] = 91,["41"] = 91,["42"] = 91,["43"] = 91,["44"] = 94,["45"] = 94,["46"] = 94,["47"] = 95,["48"] = 98,["49"] = 99,["50"] = 107,["51"] = 108,["52"] = 109,["54"] = 94,["55"] = 94,["56"] = 83,["57"] = 23,["58"] = 25,["59"] = 26,["60"] = 28,["61"] = 31,["62"] = 32,["63"] = 33,["64"] = 36,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 40,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 44,["73"] = 45,["74"] = 48,["75"] = 49,["76"] = 50,["77"] = 51,["78"] = 54,["79"] = 55,["80"] = 58,["81"] = 61,["82"] = 62,["83"] = 23,["84"] = 65,["85"] = 67,["86"] = 65,["87"] = 73,["89"] = 75,["90"] = 75,["91"] = 76,["92"] = 75,["95"] = 79,["96"] = 81,["97"] = 73,["98"] = 117,["99"] = 118,["100"] = 120,["101"] = 123,["102"] = 124,["103"] = 125,["104"] = 126,["105"] = 130,["106"] = 131,["107"] = 131,["108"] = 131,["109"] = 131,["110"] = 131,["111"] = 131,["112"] = 132,["113"] = 134,["114"] = 137,["115"] = 138,["116"] = 117,["117"] = 144,["118"] = 145,["119"] = 144,["120"] = 148,["121"] = 149,["122"] = 151,["123"] = 163,["125"] = 175,["126"] = 177,["127"] = 177,["128"] = 177,["129"] = 177,["131"] = 148,["132"] = 181,["133"] = 182,["134"] = 181,["135"] = 188,["136"] = 189,["137"] = 188,["138"] = 194,["139"] = 196,["140"] = 198,["141"] = 199,["142"] = 201,["145"] = 194,["146"] = 207,["147"] = 208,["148"] = 209,["149"] = 210,["150"] = 211,["151"] = 212,["152"] = 213,["153"] = 214,["154"] = 215,["155"] = 216,["156"] = 218,["157"] = 219,["158"] = 220,["159"] = 221,["160"] = 222,["161"] = 223,["162"] = 224,["163"] = 225,["164"] = 226,["165"] = 228,["166"] = 229,["167"] = 232,["168"] = 234,["169"] = 234,["170"] = 234,["171"] = 234,["172"] = 234,["173"] = 234,["174"] = 234,["175"] = 234,["176"] = 234,["177"] = 234,["178"] = 207,["179"] = 17,["180"] = 18});
local ____exports = {}
local ____Config = require("Config")
local Config = ____Config.Config
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
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_HASTE, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_ILLUSION, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_INVISIBILITY, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_REGENERATION, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_ARCANE, true)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_BOUNTY, false)
    GameRules:GetGameModeEntity():SetRuneEnabled(DOTA_RUNE_SHIELD, true)
    GameRules:GetGameModeEntity():SetLoseGoldOnDeath(false)
    GameRules:GetGameModeEntity():SetCanSellAnywhere(true)
    GameRules:GetGameModeEntity():SetGiveFreeTPOnDeath(false)
    GameRules:SetUseUniversalShopMode(true)
    GameRules:GetGameModeEntity():SetFreeCourierModeEnabled(true)
    GameRules:GetGameModeEntity():SetUseTurboCouriers(Config.USE_TURBO_COURIERS)
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
