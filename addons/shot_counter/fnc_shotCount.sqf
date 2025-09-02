#include "script_component.hpp"

/*
 * Author: TinfoilHate, BlackhawkPL, Drofseh
 *
 * Increments the number of shots fired by the side/magazine
 * [west, "cool_magazine_classname"] call arc_cfg_shot_counter_shotCount;
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

params ["_side", "_magazineName"];

switch (_side) do {
    case west: {
        GVAR(expendedAmmunitionWest) set [1,(GVAR(expendedAmmunitionWest) select 1) + 1 ];
        private _found = GVAR(expendedAmmunitionWest) find _magazineName;

        if (_found < 0) then {
            GVAR(expendedAmmunitionWest) pushBack _magazineName;
            GVAR(expendedAmmunitionWest) pushBack 1;
        } else {
            GVAR(expendedAmmunitionWest) set [_found + 1,(GVAR(expendedAmmunitionWest) select _found + 1) + 1 ];
        };
    };

    case east: {
        GVAR(expendedAmmunitionEast) set [1,(GVAR(expendedAmmunitionEast) select 1) + 1 ];
        private _found = GVAR(expendedAmmunitionEast) find _magazineName;

        if (_found < 0) then {
            GVAR(expendedAmmunitionEast) pushBack  _magazineName;
            GVAR(expendedAmmunitionEast) pushBack 1;
        } else {
            GVAR(expendedAmmunitionEast) set [_found + 1,(GVAR(expendedAmmunitionEast) select _found + 1) + 1 ];
        };
    };

    case resistance: {
        GVAR(expendedAmmunitionResistance) set [1,(GVAR(expendedAmmunitionResistance) select 1) + 1 ];
        private _found = GVAR(expendedAmmunitionResistance) find _magazineName;

        if (_found < 0) then {
            GVAR(expendedAmmunitionResistance) pushBack  _magazineName;
            GVAR(expendedAmmunitionResistance) pushBack 1;
        } else {
            GVAR(expendedAmmunitionResistance) set [_found + 1,(GVAR(expendedAmmunitionResistance) select _found + 1) + 1 ];
        };
    };
};
