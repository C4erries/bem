import { BaseAbility, BaseModifier, registerAbility, registerModifier } from "../../../lib/dota_ts_adapter";

let GOLD_SPAWN_RATE = 10;


@registerAbility()
export class overboss_spawn_gold extends BaseAbility {
    particle?: ParticleID;
    
    GetRate() {
        let rate = this.GetSpecialValueFor("spawn_rate");
        return rate;
    }

    GetIntrinsicModifierName(): string {
        return "modifier_overboss_spawn_gold";
    }

}


@registerModifier()
export class modifier_overboss_spawn_gold extends BaseModifier {
    
    // Set state
    CheckState(): Partial<Record<ModifierState, boolean>> {
        return {
            [ModifierState.COMMAND_RESTRICTED]: true,
        };
    }


    // Run when modifier instance is created
    OnCreated(): void {
        if (IsServer()) {
            this.StartIntervalThink(GOLD_SPAWN_RATE);
        }
    }

    // Called when intervalThink is triggered
    OnIntervalThink(): void {
        const parent = this.GetParent();

        const throwCoin = parent.FindAbilityByName("dota_ability_throw_coin");
        const throwCoinLong = parent.FindAbilityByName("dota_ability_throw_coin_long");

        if (throwCoinLong && RandomInt(1, 100) >80){
            parent.CastAbilityNoTarget(throwCoinLong, -1);
        } else if (throwCoin){
            parent.CastAbilityNoTarget(throwCoin, -1);
        } else GameRules.Addon.SpawnGoldEntity(Vector(0, 0, 0));
    }
}

