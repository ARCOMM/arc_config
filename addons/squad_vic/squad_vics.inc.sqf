// This adds an icon to the DUI HUD compass for the vehicle assigned to each squad.

// This array assigns vehicles to squads
// Each assignment should consist of an array that contains the variable name of the group, and the variable name of the vehicle, [SQUAD, VEHICLE].
// Only one vehicle can be assigned per squad.
// This should be placed in init.sqf
arc_cfg_squad_vic_list = [];

/*
Example:
arc_cfg_squad_vic_list = [
    [BritSquadHQ, BritTruckHQ],
    [BritSquad10, BritTruck10],
    [BritSquad11, BritTruck11],
    [BritSquad12, BritTruck12],
    [BritSquad13, BritTruck13],
    [BritSquad20, BritTruck20],
    [BritSquad21, BritTruck21],
    [BritSquad22, BritTruck22],
    [BritSquad23, BritTruck23],
    [BritCrew, BritTank]
];
*/

// If you want to disable the system place this in init.sqf
arc_cfg_squad_vic_enabled = false;
