#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleRamp

Description:
    Toggles ramp open or closes

Parameters:
    0: The vehicle the player is in. <OBJECT> (default: vehicle ace_player)

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];
private _configOpen = configOf _vehicle >> "UserActions" >> "Ramp_Open";

if (_vehicle != ace_player && {isClass (_configOpen)} && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    private _configClose = configOf _vehicle >> "UserActions" >> "Ramp_Close";

    if (!isClass (_configClose)) exitWith {};
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleRamp)), _vehicle];
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_configClose >> "condition")  regexReplace ["this", "_vehicle"]))) exitWith {
        _vehicle call FUNC(rampClose)
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_configOpen >> "condition")  regexReplace ["this", "_vehicle"]))) exitWith {
        _vehicle call FUNC(rampOpen)
    };
};
