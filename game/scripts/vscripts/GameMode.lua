local ____lualib = require("lualib_bundle")
local __TS__Class = ____lualib.__TS__Class
local __TS__New = ____lualib.__TS__New
local __TS__Decorate = ____lualib.__TS__Decorate
local __TS__SourceMapTraceBack = ____lualib.__TS__SourceMapTraceBack
__TS__SourceMapTraceBack(debug.getinfo(1).short_src, {["8"] = 1,["9"] = 1,["10"] = 3,["11"] = 3,["12"] = 4,["13"] = 4,["14"] = 5,["15"] = 5,["16"] = 6,["17"] = 6,["18"] = 8,["19"] = 17,["20"] = 18,["21"] = 17,["23"] = 20,["24"] = 21,["25"] = 21,["26"] = 21,["27"] = 21,["28"] = 85,["29"] = 90,["30"] = 90,["31"] = 90,["32"] = 90,["33"] = 90,["34"] = 91,["35"] = 91,["36"] = 91,["37"] = 91,["38"] = 91,["39"] = 92,["40"] = 92,["41"] = 92,["42"] = 92,["43"] = 92,["44"] = 95,["45"] = 95,["46"] = 95,["47"] = 96,["48"] = 99,["49"] = 100,["50"] = 108,["51"] = 109,["52"] = 110,["54"] = 95,["55"] = 95,["56"] = 84,["57"] = 23,["58"] = 25,["59"] = 26,["60"] = 28,["61"] = 31,["62"] = 32,["63"] = 33,["64"] = 36,["65"] = 37,["66"] = 38,["67"] = 39,["68"] = 40,["69"] = 41,["70"] = 42,["71"] = 43,["72"] = 44,["73"] = 45,["74"] = 48,["75"] = 49,["76"] = 50,["77"] = 51,["78"] = 54,["79"] = 55,["80"] = 56,["81"] = 59,["82"] = 62,["83"] = 63,["84"] = 23,["85"] = 66,["86"] = 68,["87"] = 66,["88"] = 74,["90"] = 76,["91"] = 76,["92"] = 77,["93"] = 76,["96"] = 80,["97"] = 82,["98"] = 74,["99"] = 118,["100"] = 119,["101"] = 121,["102"] = 124,["103"] = 125,["104"] = 126,["105"] = 127,["106"] = 131,["107"] = 132,["108"] = 132,["109"] = 132,["110"] = 132,["111"] = 132,["112"] = 132,["113"] = 133,["114"] = 135,["115"] = 138,["116"] = 139,["117"] = 118,["118"] = 145,["119"] = 146,["120"] = 145,["121"] = 149,["122"] = 150,["123"] = 152,["124"] = 164,["126"] = 176,["127"] = 178,["128"] = 178,["129"] = 178,["130"] = 178,["132"] = 149,["133"] = 182,["134"] = 183,["135"] = 182,["136"] = 189,["137"] = 190,["138"] = 189,["139"] = 195,["140"] = 197,["141"] = 199,["142"] = 200,["143"] = 202,["146"] = 195,["147"] = 208,["148"] = 209,["149"] = 210,["150"] = 211,["151"] = 212,["152"] = 213,["153"] = 214,["154"] = 215,["155"] = 216,["156"] = 217,["157"] = 219,["158"] = 220,["159"] = 221,["160"] = 222,["161"] = 223,["162"] = 224,["163"] = 225,["164"] = 226,["165"] = 227,["166"] = 229,["167"] = 230,["168"] = 233,["169"] = 235,["170"] = 235,["171"] = 235,["172"] = 235,["173"] = 235,["174"] = 235,["175"] = 235,["176"] = 235,["177"] = 235,["178"] = 235,["179"] = 208,["180"] = 17,["181"] = 18});
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
