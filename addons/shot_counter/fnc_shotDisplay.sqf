#include "script_component.hpp"

/*
 * Author: TinfoilHate, BlackhawkPL, Drofseh
 *
 * Builds the 
 * [] call arc_config_shot_counter_shotDisplay;
 *
 * Arguments:
 * 0: A side <SIDE>
 * 1: A magazine's displayName <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Public: No
 */

// Do player's personal ammo count
GVAR(countTextPlayer) = format ["%1 - Munitions Expended:<br/>", name player];

if ((GVAR(playerExpendedAmmunition) select 1) > 0) then {
    for [{ _i = 0}, {_i < count GVAR(playerExpendedAmmunition)}, {_i = _i + 2}] do {
        _label = GVAR(playerExpendedAmmunition) select (_i);
        _count = GVAR(playerExpendedAmmunition) select (_i + 1);
        GVAR(countTextPlayer) = format ["%1%2: %3 Rounds<br/>",GVAR(countTextPlayer),_label,str _count];
    };
} else {
    GVAR(countTextPlayer) = format ["%1None",GVAR(countTextPlayer)];
};

// Do ammo count for each team
if ((GVAR(expendedAmmunitionWest) select 1) > 0) then {
    GVAR(textBluefor) = "BLUFOR - Munitions Expended:<br/>";
    for [{ _i = 0}, {_i < count GVAR(expendedAmmunitionWest)}, {_i = _i + 2}] do {
        _label = GVAR(expendedAmmunitionWest) select (_i);
        _count = GVAR(expendedAmmunitionWest) select (_i + 1);
        GVAR(textBluefor) = format ["%1%2: %3 Rounds<br/>",GVAR(textBluefor),_label,str _count];
    };
    GVAR(textBluefor) = format ["%1<br/><br/>",GVAR(textBluefor)];
} else {
    GVAR(textBluefor) = "";
};

if ((GVAR(expendedAmmunitionEast) select 1) > 0) then {
    GVAR(textOpfor) = "OPFOR - Munitions Expended:<br/>";
    for [{ _i = 0}, {_i < count GVAR(expendedAmmunitionEast)}, {_i = _i + 2}] do {
        _label = GVAR(expendedAmmunitionEast) select (_i);
        _count = GVAR(expendedAmmunitionEast) select (_i + 1);
        GVAR(textOpfor) = format ["%1%2: %3 Rounds<br/>",GVAR(textOpfor),_label,str _count];
    };
    GVAR(textOpfor) = format ["%1<br/><br/>",GVAR(textOpfor)];
} else {
    GVAR(textOpfor) = "";
};

if ((GVAR(expendedAmmunitionResistance) select 1) > 0) then {
    GVAR(textResistance) = "INDEPENDENT - Munitions Expended:<br/>";
    for [{ _i = 0}, {_i < count GVAR(expendedAmmunitionResistance)}, {_i = _i + 2}] do {
        _label = GVAR(expendedAmmunitionResistance) select (_i);
        _count = GVAR(expendedAmmunitionResistance) select (_i + 1);
        GVAR(textResistance) = format ["%1%2: %3 Rounds<br/>",GVAR(textResistance),_label,str _count];
    };
    GVAR(textResistance) = format ["%1<br/><br/>",GVAR(textResistance)];
} else {
    GVAR(textResistance) = "";
};

GVAR(countTextTeams) = format ["%1%2%3",GVAR(textBluefor),GVAR(textOpfor),GVAR(textResistance)];
