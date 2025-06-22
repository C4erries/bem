//Config file for specific game management (item pools)
export class GameConfig{

    //Bonus items item pools
    static t1BonusItems = 
        [
            "item_quarterstaff",
            "item_blades_of_attack",
            "item_fluffy_hat",
            "item_helm_of_iron_will",
            "item_orb_of_corrosion"
        ]

    static t2BonusItems =
        [
            "item_javelin",
            "item_mithril_hammer",
            "item_point_booster",
            "item_ghost",
            "item_platemail"
        ]

    static t3BonusItems =
        [
            "item_hyperstone",
            "item_ultimate_orb",
            "item_echo_sabre",
            "item_dagon_2",
            "item_kaya"
        ]

    static t4BonusItems =
        [
            "item_moon_shard",
            "item_lotus_orb",
            "item_orchid",
            "item_invis_sword",
            "item_bfury"
        ]

    static t5BonusItems =
        [
            "item_ethereal_blade",
            "item_hurricane_pike",
            "item_greater_crit",
            "item_angels_demise",
            "item_mjollnir"
        ]

    //Bonus items spawn time (all time in seconds)
    static T2_ITEMS_TIME:number=420;
    static T3_ITEMS_TIME:number=840;
    static T4_ITEMS_TIME:number=1260;
    static T5_ITEMS_TIME:number=1680;

    static MAX_BONUS_ITEMS:number=100;
    static BONUS_SPAWN_TIME:number=60;
    static BONUS_WARN_TIME:number=7;

    static COIN_MONEY:number=200;
    static FAKE_COIN_CHANCE:number=5;
    static BOMB_COIN_CHANCE:number=3;
}