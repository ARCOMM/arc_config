#include "script_component.hpp"

/*
 * Author: TinfoilHate, BlackhawkPL, Drofseh
 *
 * Adds the fired eventhandler to an object.
 * _unit call arc_config_shot_counter_addEH;
 *
 * Arguments:
 * 0: Unit or vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Public: No
 */

params ["_object"];

if (_object isKindOf "Man") exitWith {
    _object addEventHandler ["Fired", {
        params ["", "", "", "", "", "_magazine", "", "_gunner"];
        [side group _gunner, _magazine call FUNC(getDisplayName)] call FUNC(shotCount);
    }];
};

if (_object isKindOf "Land"
    || {_object isKindOf "Air"}
    || {_object isKindOf "Ship"}
) then {
    _object addEventHandler ["Fired", {
        params ["", "", "", "", "", "_magazine", "", "_gunner"];
        [side group _gunner, _magazine call FUNC(getDisplayName)] call FUNC(shotCount);
    }];
};
