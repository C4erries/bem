


export function AddVector(v1 : Vector, v2 : Vector) {
    return Vector(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
}

export function ShuffledList<Type>( orig_list : Type[] ): Type[]{
    const list = orig_list.slice() // копируем список
        const result: Type[] = [] // результат
        const count = list.length
        let t : string = ""
        //list.forEach( (v, i) => print("ShuffledList: list.foreach: value: " + v + " index " + i))
        for(const i of $range(0, count-1)) { // [0, count-1] включительно короче
            const pick = RandomInt( 0, list.length-1 )
            result.push(list[ pick ])
            t += list[ pick ] + ","
            list.splice(pick, 1)
        }
        //print( "Picked teams: length = " + result.length + " elements: " + t )
        return result
}

export function PickRandomShuffle<Type>( reference_list : Type[], bucket : Type[]) : Type{
    if ( bucket.length == 0 ) {
        // ran out of options, refill the bucket from the reference
        reference_list.forEach((v,k) => bucket[k] = v)
    }

    // pick a value from the bucket and remove it
    const pick_index = RandomInt( 0, bucket.length-1 )
    const result = bucket[ pick_index ]
    bucket.splice(pick_index, 1)
    return result
}