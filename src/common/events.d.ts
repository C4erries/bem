/**
 * This file contains types for the events you want to send between the UI (Panorama)
 * and the server (VScripts).
 * 
 * IMPORTANT: 
 * 
 * The dota engine will change the type of event data slightly when it is sent, so on the
 * Panorama side your event handlers will have to handle NetworkedData<EventType>, changes are:
 *   - Booleans are turned to 0 | 1
 *   - Arrays are automatically translated to objects when sending them as event. You have
 *     to change them back into arrays yourself! See 'toArray()' in src/panorama/hud.ts
 */



// To declare an event for use, add it to this table with the type of its data
interface CustomGameEventDeclarations {
    example_event: ExampleEventData,
    ui_panel_closed: UIPanelClosedEventData,
    countdown: gametimerData,
    time_remaining: gametimerData,
    overtime_alert: {killcount: number},
    score_board: scoreBoardData,
    item_will_spawn: { spawn_location:  Vector },
    item_has_spawned: {},
    overthrow_item_drop: overthrowItemDropData,
}

// Define the type of data sent by the example_event event
interface ExampleEventData {
    myNumber: number;
    myBoolean: boolean;
    myString: string;
    myArrayOfNumbers: number[]
}

// This event has no data
interface UIPanelClosedEventData {}

interface gametimerData{
    timer_minute_10: number,
    timer_minute_01: number,
    timer_second_10: number,
    timer_second_01: number,
}

interface scoreBoardData{
    team_id: number,
    team_score: number,
}

interface overthrowItemDropData{
    hero_id: string,
    dropped_item: string
}