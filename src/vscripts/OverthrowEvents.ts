export function ExecuteOrderFilter( filterTable : ExecuteOrderFilterEvent ) : boolean{
	/*
	for k, v in pairs( filterTable ) {
		print("EO: " .. k .. " " .. tostring(v) )
	}
	*/

    const orderType = filterTable.order_type 
    if ( orderType != UnitOrder.PICKUP_ITEM || filterTable.issuer_player_id_const == -1 ){
        return true
    }
    else {
        const item = EntIndexToHScript(filterTable.entindex_target) as CDOTA_Item_Physical
        if (item == undefined) {
            return true
        }
        const pickedItem = item.GetContainedItem()

        //print(pickedItem.GetAbilityName())
        if (pickedItem == undefined) {
            return true
        }
        switch(pickedItem.GetAbilityName()){
            case "item_bag_of_gold":{
                const hero = EntIndexToHScript(filterTable.units["0"]) as CDOTA_BaseNPC_Hero
                if(hero == undefined || !hero.IsRealHero())
                    return false;
                break;
            }
            case "item_treasure_chest":{
                const player = PlayerResource.GetPlayer(filterTable.issuer_player_id_const)
                if(player==undefined){
                    return true
                }
                const hero = EntIndexToHScript(filterTable.units["0"]) as CDOTA_BaseNPC_Hero
                if(hero == undefined || !hero.IsRealHero())
                    return false;   
                let bAllowPickup = false

                //const hNeutralItem = hero.GetItemInSlot(16) // InventorySlot.NEUTRAL_SLOT -- не работает почему-то, на практике ровно nil а не 16
                //есть СВОбодный слот в инвентаре
                for (let nItemSlot = 0; nItemSlot < DOTA_ITEM_INVENTORY_SIZE; nItemSlot++) {
                    const hItem = hero.GetItemInSlot( nItemSlot ) // index zero based
                    if (hItem == undefined) {
                        bAllowPickup = true
                        break;
                    }
                }

    
                if (bAllowPickup) {
                    //print("inventory has space")
                    return true
                }
                else {
                    //print("Moving to target instead")
                    const position = item.GetAbsOrigin()
                    filterTable.position_x = position.x
                    filterTable.position_y = position.y
                    filterTable.position_z = position.z
                    filterTable.order_type = UnitOrder.MOVE_TO_POSITION 
                    return true
                }
                break;
            }
        }
    }
    return true
}