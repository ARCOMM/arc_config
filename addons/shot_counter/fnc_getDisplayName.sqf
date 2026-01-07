#include "script_component.hpp"

/*
 * Author: TinfoilHate, BlackhawkPL, Drofseh
 *
 * Gets the displayName of the given magazine.
 * ["magazine"] call arc_cfg_shot_counter_getDisplayName;
 *
 * Arguments:
 * 0: Magazine Classname <STRING>
 *
 * Return Value:
 * Magazine config's displayName <STRING>
 *
 * Public: No
 */

params ["_magazine"];
private _displayName = "Error";
private _foundClass = GVAR(magazines) find _magazine;

if (_foundClass < 0) then {
    _displayName =  getText(configFile >> "CfgMagazines" >> _magazine >> "displayName");

    if (_displayName isEqualTo "") then {
        _displayName = (str _magazine);
        diag_log text (format ["displayName entry is blank for %1", _displayName]);
    };

    GVAR(magazines) pushBack _magazine;
    GVAR(magazines) pushBack _displayName;
} else {
    _displayName = GVAR(magazines) select(_foundClass + 1);
};

_displayName
