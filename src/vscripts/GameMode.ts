import { reloadable } from "./lib/tstl-utils";
import { modifier_panic } from "./modifiers/modifier_panic";
import { Overthrow } from "./Overthrow";
import { TeamsSettings } from "./Teams";

const heroSelectionTime = 20;

declare global {
    interface CDOTAGameRules {
        Addon: GameMode;
    }
    let nCOUNTDOWNTIMER: number;
}

@reloadable
export class GameMode {

    public TeamsSettings = new TeamsSettings();
    public Overthrow = new Overthrow();

    public static Precache(this: void, context: CScriptPrecacheContext) {
    //Cache the gold bags
		PrecacheItemByNameSync( "item_bag_of_gold", context )
		PrecacheResource( "particle", "particles/items2_fx/veil_of_discord.vpcf", context )	

		PrecacheItemByNameSync( "item_treasure_chest", context )

	//Cache the creature models
		PrecacheUnitByNameSync( "npc_dota_creature_basic_zombie", context )
        PrecacheUnitByNameSync( "npc_dota_creature_berserk_zombie", context )
        PrecacheUnitByNameSync( "npc_dota_treasure_courier", context )

    //Cache new particles
       	PrecacheResource( "particle", "particles/econ/events/nexon_hero_compendium_2014/teleport_end_nexon_hero_cp_2014.vpcf", context )
       	PrecacheResource( "particle", "particles/leader/leader_overhead.vpcf", context )
       	PrecacheResource( "particle", "particles/last_hit/last_hit.vpcf", context )
       	PrecacheResource( "particle", "particles/units/heroes/hero_zuus/zeus_taunt_coin.vpcf", context )
       	PrecacheResource( "particle", "particles/addons_gameplay/player_deferred_light.vpcf", context )
       	PrecacheResource( "particle", "particles/items_fx/black_king_bar_avatar.vpcf", context )
       	PrecacheResource( "particle", "particles/treasure_courier_death.vpcf", context )
       	PrecacheResource( "particle", "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", context )
       	PrecacheResource( "particle", "particles/econ/items/lone_druid/lone_druid_cauldron/lone_druid_bear_entangle_dust_cauldron.vpcf", context )
       	PrecacheResource( "particle", "particles/newplayer_fx/npx_landslide_debris.vpcf", context )
       	
	//Cache particles for traps
		PrecacheResource( "particle_folder", "particles/units/heroes/hero_dragon_knight", context )
		PrecacheResource( "particle_folder", "particles/units/heroes/hero_venomancer", context )
		PrecacheResource( "particle_folder", "particles/units/heroes/hero_axe", context )
		PrecacheResource( "particle_folder", "particles/units/heroes/hero_life_stealer", context )

	//Cache sounds for traps
		PrecacheResource( "soundfile", "soundevents/game_sounds_heroes/game_sounds_dragon_knight.vsndevts", context )
		PrecacheResource( "soundfile", "soundevents/soundevents_conquest.vsndevts", context )

	// Cache overthrow-specific sounds
		PrecacheResource( "soundfile", "soundevents/game_sounds_overthrow.vsndevts", context )


        PrecacheResource("particle", "particles/units/heroes/hero_meepo/meepo_earthbind_projectile_fx.vpcf", context);
        PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_meepo.vsndevts", context);
    }

    public static Activate(this: void) {
        // When the addon activates, create a new instance of this GameMode class.
        GameRules.Addon = new GameMode();
    }

    


    public OnThink(){
        
        for(let nPlayerId = 0; nPlayerId < DOTA_MAX_TEAM_PLAYERS;  nPlayerId++) {
            this.TeamsSettings.UpdatePlayerColor(nPlayerId as PlayerID);
        }

        this.Overthrow.OverthrowThink();

        return 1        
    }
    constructor() {
        this.configure()



        // Register event listeners for dota engine events
        ListenToGameEvent("game_rules_state_change", () => this.OnStateChange(), undefined);
        ListenToGameEvent("npc_spawned", event => this.OnNpcSpawned(event), undefined);
        ListenToGameEvent("dota_item_picked_up", event => this.Overthrow.OnItemPickedUp(event), undefined);
        
        // Register event listeners for events from the UI
        CustomGameEventManager.RegisterListener("ui_panel_closed", (_, data) => {
            print(`Player ${data.PlayerID} has closed their UI panel.`);
            
            // Respond by sending back an example event
            const player = PlayerResource.GetPlayer(data.PlayerID)!;
            CustomGameEventManager.Send_ServerToPlayer(player, "example_event", {
                myNumber: 42,
                myBoolean: true,
                myString: "Hello!",
                myArrayOfNumbers: [1.414, 2.718, 3.142]
            });

            // Also apply the panic modifier to the sending player's hero
            const hero = player.GetAssignedHero();
            if (hero != undefined) { // Hero didn't spawn yet or dead
                hero.AddNewModifier(hero, undefined, modifier_panic.name, { duration: 5 });
            }
        });
    }


   

    private configure(): void {
        nCOUNTDOWNTIMER = 901;
        GameRules.GetGameModeEntity().SetThink("OnThink", this, "OnThink", 1.0);


        GameRules.SetCustomGameEndDelay( 0 )
        GameRules.SetCustomVictoryMessageDuration( 10 )
        GameRules.SetPreGameTime( 10.0 )
        GameRules.SetStrategyTime( 10.0 )
        //GameRules.GetGameModeEntity().SetLuaGameMode(this);

        Convars.RegisterCommand("overthrow_force_item_drop", this.Overthrow.ForceSpawnItem, "Force an item drop.", ConVarFlags.CHEAT);
        Convars.RegisterCommand("overthrow_force_gold_drop", this.Overthrow.SpawnGold, "Force an gold drop.", ConVarFlags.CHEAT);
        Convars.RegisterCommand("overthrow_set_timer", (...args) => this.Overthrow.SetTimer(), "Set the timer.", ConVarFlags.CHEAT);
        Convars.SetInt( "dota_server_side_animation_heroesonly", 0 )

        this.settingGameModeEntity();


        GameRules.SetShowcaseTime(2);
        GameRules.SetHeroSelectionTime(heroSelectionTime);

        this.Overthrow.GatherAndRegisterValidTeams()
    }

    //В Overboss.lua используется
    public SpawnGoldEntity(spawnPoint : any){
        this.Overthrow.SpawnGoldEntity(spawnPoint)
    }

    public OnStateChange(): void {
        this.Overthrow.OnGameRulesStateChange();
        
        const state = GameRules.State_Get();


        // Add 4 bots to lobby in tools
        /*
        if (IsInToolsMode() && state == GameState.CUSTOM_GAME_SETUP) {
            for (let i = 0; i < 4; i++) {
                Tutorial.AddBot("npc_dota_hero_lina", "", "", false);
            }
        }
        */

        if (state === GameState.CUSTOM_GAME_SETUP) {
            // Automatically skip setup in tools
            /*
            if (IsInToolsMode()) {
                Timers.CreateTimer(10, () => {
                    GameRules.FinishCustomGameSetup();
                });
            }
             */   
        }

        // Start game once pregame hits
        if (state === GameState.PRE_GAME) {
            
            Timers.CreateTimer(0.2, () => this.StartGame());
        }
    }

    private StartGame(): void {
        print("Game starting!");

        // Do some stuff here
    }

    // Called on script_reload
    public Reload() {
        print("Script reloaded!");

        // Do some stuff here
    }

    private OnNpcSpawned(event: NpcSpawnedEvent) {
        // After a hero unit spawns, apply modifier_panic for 8 seconds
        const unit = EntIndexToHScript(event.entindex) as CDOTA_BaseNPC; // Cast to npc since this is the 'npc_spawned' event
        // Give all real heroes (not illusions) the meepo_earthbind_ts_example spell
        if (unit.IsRealHero()) {
            if (!unit.HasAbility("meepo_earthbind_ts_example")) {
                // Add lua ability to the unit
                unit.AddAbility("meepo_earthbind_ts_example");
            }
        }
    }


    private settingGameModeEntity() : void{
        GameRules.GetGameModeEntity()
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.DOUBLEDAMAGE , true ) //Double Damage
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.HASTE, false ) //Haste
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.ILLUSION, false ) //Illusion
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.INVISIBILITY, false ) //Invis
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.REGENERATION, false ) //Regen
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.ARCANE, false ) //Arcane
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.BOUNTY, false ) //Bounty
        GameRules.GetGameModeEntity().SetRuneEnabled( RuneType.SHIELD, false ) //Bounty

        GameRules.GetGameModeEntity().SetLoseGoldOnDeath( false )
        GameRules.GetGameModeEntity().SetCanSellAnywhere( true ) // НЕ РАБОТАЕТ ?
        GameRules.GetGameModeEntity().SetGiveFreeTPOnDeath( false )
        GameRules.SetUseUniversalShopMode( true )

        GameRules.GetGameModeEntity().SetFountainPercentageHealthRegen( 0 ) // ФонТаня дает руну регена
	    GameRules.GetGameModeEntity().SetFountainPercentageManaRegen( 0 )
	    GameRules.GetGameModeEntity().SetFountainConstantManaRegen( 0 )

        GameRules.GetGameModeEntity().SetTopBarTeamValuesOverride( true )
	    GameRules.GetGameModeEntity().SetTopBarTeamValuesVisible( false )


        GameRules.SetPostGameLayout( PostGameLayout.SINGLE_COLUMN )

        GameRules.SetPostGameColumns( [
            PostGameColumn.LEVEL,
            PostGameColumn.ITEMS,
            PostGameColumn.KILLS,
            PostGameColumn.DEATHS,
            PostGameColumn.ASSISTS,
            PostGameColumn.NET_WORTH,
            PostGameColumn.DAMAGE,
            PostGameColumn.HEALING
        ] )

    }

   
    
    

}
