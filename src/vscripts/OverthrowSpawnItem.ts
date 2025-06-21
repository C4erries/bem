import { Config } from "./Config";
import { GameConfig } from "./GameConfig";
import { PickRandomShuffle } from "./Utility";

declare interface SpawnLocation{
    hSpawnLocation: CBaseEntity,
    path_track_name: string,
    world_effects_name: string,
    hDrop: CDOTA_Item_Physical[],
    hItemDestinationRevealer: CDOTA_BaseNPC | undefined,
    nItemDestinationParticles: ParticleID | undefined,
}

export class OverthrowSpawnItem{
    nNextSpawnItemNumber: number = 1;
    nMaxItemSpawns: number = 30;
    spawnTime: number = 60;
    warnTime: number = 7;
    hasWarnedSpawn: boolean = false;
    itemSpawnLocations: SpawnLocation[] = [];
    hCurrentItemSpawnLocation: SpawnLocation | undefined;
    hItemDestinationRevealer: CDOTA_BaseNPC | undefined;
    nItemDestinationParticles: ParticleID | undefined;

    tier1ItemBucket: string[] = []
	tier2ItemBucket: string[] = []
	tier3ItemBucket: string[] = []
	tier4ItemBucket: string[] = []
	tier5ItemBucket: string[] = []

    public OnTreasureChestPickedUp(event : DotaItemPickedUpEvent){
        //print("OnTreasureChestPickedUp")
        const item = EntIndexToHScript( event.ItemEntityIndex ) as CDOTA_Item
        const hContainer = item.GetContainer()
        let hContainerIndex = -1;
        const pickedUpSpawnLocationIndex = this.itemSpawnLocations.findIndex((v,k) =>{
            hContainerIndex = v.hDrop.findIndex((drop) => drop == hContainer)
            return hContainerIndex != -1
        })
        const pickedUpSpawnLocation = this.itemSpawnLocations[pickedUpSpawnLocationIndex]
        /*
        if(pickedUpSpawnLocation  == undefined){
            print("SpawnLocationInUseUndefined: "+pickedUpSpawnLocationIndex)
        }
        if(pickedUpSpawnLocation .hDrop == undefined){
            print("pickedUpSpawnLocation.hDrop undefined")
        }
        */

        
        DoEntFire( pickedUpSpawnLocation.world_effects_name, "Stop", "0", 0, this, this )
        pickedUpSpawnLocation.hDrop.splice(hContainerIndex, 1)
            /*
            let debug = ""
            this.itemSpawnLocations.forEach((v,k)=>{
                if(v == undefined) debug += k+":undefined, "
                else debug += k+":"+v.hSpawnLocation.GetName()+", "
            })
            print(debug)
            print("^^^^^^ItemSpawnLocaions")
            
        }*/

        
        this.SpecialItemAdd( event )
    }

    public ThinkSpecialItemDrop(){
        //Stop spawning items after the maximum amount
        if (this.nNextSpawnItemNumber >= this.nMaxItemSpawns) {
            return
        }
        //Don't spawn if the game is about to }
        if (nCOUNTDOWNTIMER < 20) {
            return
        }
        const t = GameRules.GetDOTATime( false, false )
        const tSpawn = ( this.spawnTime * this.nNextSpawnItemNumber )
        const tWarn = tSpawn - this.warnTime
        
        if (!this.hasWarnedSpawn && t >= tWarn) {
            //warn the item is about to spawn
            //we might fail to reserve a spot in which case we'll just skip && move on to the next spawn
            if (!this.WarnItem()) {
                this.nNextSpawnItemNumber = this.nNextSpawnItemNumber + 1
                return
            }
            this.hasWarnedSpawn = true
        }
        else if (t >= tSpawn) {
            //spawn the item
            this.SpawnItem()
            this.nNextSpawnItemNumber = this.nNextSpawnItemNumber + 1
            this.hasWarnedSpawn = false
        }
    }

    KnockBackFromTreasure( center : Vector, radius : number, knockback_duration : number, knockback_distance : number, knockback_height : number ){
        const targetType = bit.bor( UnitTargetType.CREEP, UnitTargetType.HERO )
        const knockBackUnits = FindUnitsInRadius( DotaTeam.NOTEAM, center, undefined, radius, UnitTargetTeam.BOTH , targetType, UnitTargetFlags.NONE, FindOrder.ANY, false )
    
        const modifierKnockback =
        {
            center_x: center.x,
            center_y: center.y,
            center_z: center.z,
            duration: knockback_duration,
            knockback_duration: knockback_duration,
            knockback_distance: knockback_distance,
            knockback_height: knockback_height,
        }
        knockBackUnits.forEach((unit) => unit.AddNewModifier(unit, undefined, "modifier_knockback", modifierKnockback ))
    }

    PlanNextSpawn(){
        //print("PlanNextSpawn")
        if (this.itemSpawnLocations == undefined || this.itemSpawnLocations.length ==0) {
            this.itemSpawnLocations = []
            let nMaxSpawns = 8
            if (GetMapName() == "desert_quintet") {
                //print("map is desert_quintet")
                nMaxSpawns = 6
            }
            else if (GetMapName() == "temple_quartet") {
                //print("map is temple_quartet")
                nMaxSpawns = 4
            }

            for (let i=1; i <= nMaxSpawns; i++) {
                const spawnName = "item_spawn_" + i
                //print( '^^^SEARCHING FOR SPAWN POINT NAMED = ' + spawnName )
                const hSpawnLocation = Entities.FindByName( undefined, spawnName )
                if (hSpawnLocation == undefined ){
                    print( '^^^MISSING SPAWN LOCATION = ' + spawnName )
                }
                else{
                    const newSpawnLocation =
                    {
                        hSpawnLocation: hSpawnLocation,
                        path_track_name: "item_spawn_" + i,
                        world_effects_name: "item_spawn_particle_" + i,
                        hDrop: [],
                        hItemDestinationRevealer: undefined,
                        nItemDestinationParticles: undefined
                    }
                    this.itemSpawnLocations[i-1] = newSpawnLocation
                }
            }
            /*
            let temp = ''
            this.itemSpawnLocations.forEach((v,k)=>{
                temp+= v.hSpawnLocation.GetName() + " "
            })
            print("PlanNextSpawn: itemSpawnLocations.forEach: " + temp)
            */
        }
        

        if (this.itemSpawnLocations.length <= 0) {
            print( 'RAN OUT OF SPAWN LOCATIONS!' )
            return false
        }

        const r = RandomInt( 0, this.itemSpawnLocations.length-1 )
        const spawnPoint = this.itemSpawnLocations[r]
        /*
        let debug = ""
        this.itemSpawnLocations.forEach((v,k)=>{
            if(v == undefined) debug += k+":undefined, "
            else debug += k+":"+v.hSpawnLocation.GetName()+", "
        })
        print(debug)
        print("^^^^^ItemSpawnLocaions    PlanNextSpawn")
        */
        //print("PlanNextSpawn: (spawnPoint == undefined) is " + (spawnPoint == undefined))
        //print("SpawnTo: " + (spawnPoint?.hSpawnLocation.GetName()))
        this.hCurrentItemSpawnLocation = spawnPoint

        return true
    }

    ForceSpawnItem(){
        if (this.WarnItem()) {
            this.SpawnItem()
        }
    }

    WarnItem(){
        //print("WarnItem")
        //find the spawn point
        if (!this.PlanNextSpawn()) {
            return false
        }
        if(this.hCurrentItemSpawnLocation == undefined){
            print("WarnItem: this.hCurrentItemSpawnLocation undefined")
            return
        }
        const spawnLocation = this.hCurrentItemSpawnLocation.hSpawnLocation.GetAbsOrigin();

        //notify everyone
        CustomGameEventManager.Send_ServerToAllClients( "item_will_spawn", { spawn_location:  spawnLocation } )
        EmitGlobalSound( "Overthrow.Item.Warning" )
        
        //fire the destination particles
        DoEntFire( this.hCurrentItemSpawnLocation.world_effects_name, "Start", "0", 0, this, this )

        //Give vision to the spawn area (unit is on goodguys, but shared vision)
        this.hItemDestinationRevealer = CreateUnitByName( "npc_vision_revealer", spawnLocation, false, undefined, undefined, DotaTeam.GOODGUYS )
        this.nItemDestinationParticles = ParticleManager.CreateParticle( "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", ParticleAttachment.ABSORIGIN, this.hItemDestinationRevealer )
        ParticleManager.SetParticleControlEnt( this.nItemDestinationParticles, ParticleAttachment.ABSORIGIN, this.hItemDestinationRevealer, ParticleAttachment.ABSORIGIN, "attach_origin", this.hItemDestinationRevealer.GetAbsOrigin(), true )

        return true
    }


    SpawnItem(){
        //print("SpawnItem")
        //notify everyone
        CustomGameEventManager.Send_ServerToAllClients( "item_has_spawned", {})
        EmitGlobalSound( "Overthrow.Item.Spawn" )

        //spawn the item
        const startLocation = Vector( 0, 0, 700 )
        const treasureCourier = CreateUnitByName( "npc_dota_treasure_courier" , startLocation, true, undefined, undefined, DotaTeam.NEUTRALS )
        const treasureAbility = treasureCourier.FindAbilityByName( "dota_ability_treasure_courier" )
        if(treasureAbility == undefined){
            print("treasureAbility undefined")
            return
        }
        treasureAbility.SetLevel( 1 )
        //print ("Spawning Treasure")
        if(this.hCurrentItemSpawnLocation == undefined){
            print("SpawnItem: this.hCurrentItemSpawnLocation undefined")
            return
        }
        treasureCourier.SetInitialGoalEntity( this.hCurrentItemSpawnLocation.hSpawnLocation )
        //const particleTreasure = ParticleManager.CreateParticle( "particles/items_fx/black_king_bar_avatar.vpcf", PATTACH_ABSORIGIN, treasureCourier )
        //ParticleManager.SetParticleControlEnt( particleTreasure, PATTACH_ABSORIGIN, treasureCourier, PATTACH_ABSORIGIN, "attach_origin", treasureCourier:GetAbsOrigin(), true )
        //treasureCourier:Attribute_SetIntValue( "particleID", particleTreasure )
    }

    

    TreasureDrop( treasureCourier : CDOTA_BaseNPC) : void{
        //print("TreasureDrop")
        //Destroy vision revealer
        this.hItemDestinationRevealer?.RemoveSelf()
        if(this.nItemDestinationParticles != undefined){
            ParticleManager.DestroyParticle( this.nItemDestinationParticles, false )
        }

        //Create the death effect for the courier
        const treasureCourierInitialGoalEntity = treasureCourier.GetInitialGoalEntity() 
        if(treasureCourierInitialGoalEntity == undefined){
            print("TreasureDrop treasureCourier.GetInitialGoalEntity() undefined")
            return
        }
        const spawnPoint = treasureCourierInitialGoalEntity.GetAbsOrigin()
        spawnPoint.z = 400
        const fxPoint = treasureCourierInitialGoalEntity.GetAbsOrigin()
        fxPoint.z = 400
        const deathEffects = ParticleManager.CreateParticle( "particles/treasure_courier_death.vpcf", ParticleAttachment.CUSTOMORIGIN, undefined)
        ParticleManager.SetParticleControl( deathEffects, 0, fxPoint )
        ParticleManager.SetParticleControlOrientation( deathEffects, 0, treasureCourier.GetForwardVector(), treasureCourier.GetRightVector(), treasureCourier.GetUpVector() )
        EmitGlobalSound( "lockjaw_Courier.Impact" )
        EmitGlobalSound( "lockjaw_Courier.gold_big" )

        //Spawn the treasure chest at the selected item spawn location
        const newItem = CreateItem( "item_treasure_chest", undefined, undefined )
        if(newItem == undefined){
            print("TreasureDrop undefined")
            return
        }
        const drop = CreateItemOnPositionForLaunch( spawnPoint, newItem )
        drop.SetForwardVector( treasureCourier.GetRightVector() ) //oriented differently
        newItem.LaunchLootInitialHeight( false, 0, 50, 0.25, spawnPoint )

        if(this.hCurrentItemSpawnLocation == undefined){
            print("TreasureDrop: this.hCurrentItemSpawnLocation undefined")
            return
        }

        this.hCurrentItemSpawnLocation.hDrop.push(drop)

        /*
        let temp = ""
        this.itemSpawnLocations.forEach((v,k)=>{
            temp += v.hSpawnLocation.GetName() + " "
        })
        print(temp)
        print( '^^^ITEM SPAWN LOCATIONS' )
        */

        //Stop the particle effect
        DoEntFire( "item_spawn_particle_1", "stopplayendcap", "0", 0, this, this )

        //Knock people back from the treasure
        this.KnockBackFromTreasure( spawnPoint, 375, 0.25, 400.1, 100 )



        //Destroy the courier
        UTIL_Remove( treasureCourier )

        //create the minimap/revealer for the treasure now that it's on the ground
        //this one is attached to the table of data for the spawn location so we can clean it up when the treasure is picked up
        this.hCurrentItemSpawnLocation.hItemDestinationRevealer = CreateUnitByName( "npc_treasure_revealer", this.hCurrentItemSpawnLocation.hSpawnLocation.GetAbsOrigin(), false, undefined, undefined, DotaTeam.GOODGUYS )
        this.hCurrentItemSpawnLocation.nItemDestinationParticles = ParticleManager.CreateParticle( "particles/econ/wards/f2p/f2p_ward/f2p_ward_true_sight_ambient.vpcf", ParticleAttachment.ABSORIGIN, this.hCurrentItemSpawnLocation.hItemDestinationRevealer )
        ParticleManager.SetParticleControlEnt( this.hCurrentItemSpawnLocation.nItemDestinationParticles, ParticleAttachment.ABSORIGIN, this.hCurrentItemSpawnLocation.hItemDestinationRevealer, ParticleAttachment.ABSORIGIN, "attach_origin", this.hCurrentItemSpawnLocation.hItemDestinationRevealer.GetAbsOrigin(), true )

        Timers.CreateTimer(Config.TIME_TO_REMOVE_AIRDROP_REVEALER, () => {
            this.hCurrentItemSpawnLocation?.hItemDestinationRevealer?.RemoveSelf()
            if(this.hCurrentItemSpawnLocation?.nItemDestinationParticles != undefined){
                ParticleManager.DestroyParticle( this.hCurrentItemSpawnLocation.nItemDestinationParticles, false )
            }
        })
    }

    SpecialItemAdd( event : DotaItemPickedUpEvent){
        const item = EntIndexToHScript( event.ItemEntityIndex )
        const owner = EntIndexToHScript( event.HeroEntityIndex ) as CDOTA_BaseNPC_Hero
        if(owner == undefined){
            print("SpecialItemAdd owner undefined")
            return
        }
        const hero = owner.GetClassname()

        const t1 = PickRandomShuffle( GameConfig.t1BonusItems, this.tier1ItemBucket )
        const t2 = PickRandomShuffle( GameConfig.t2BonusItems, this.tier2ItemBucket )
        const t3 = PickRandomShuffle( GameConfig.t3BonusItems, this.tier3ItemBucket )
        const t4 = PickRandomShuffle( GameConfig.t4BonusItems, this.tier4ItemBucket )
        const t5 = PickRandomShuffle( GameConfig.t5BonusItems, this.tier5ItemBucket )
        
        
        let spawnedItem = ""

        if(nCOUNTDOWNTIMER > 900){
            spawnedItem = t1
        }else if(nCOUNTDOWNTIMER > 800){
            spawnedItem = t2
        }
        else if(nCOUNTDOWNTIMER > 700){
            spawnedItem = t3
        }
        else if (nCOUNTDOWNTIMER > 600){
            spawnedItem = t4
        }
        else{
            spawnedItem = t5
        }
        //print("SpecialItemAdd: item " + spawnedItem)
        //add the item to the inventory && broadcast
        owner.AddItemByName( spawnedItem )
        EmitGlobalSound("Overthrow.Item.Claimed")
        const overthrow_item_drop =
        {
            hero_id: hero,
            dropped_item: spawnedItem
        }
        CustomGameEventManager.Send_ServerToAllClients( "overthrow_item_drop", overthrow_item_drop )
    }
}