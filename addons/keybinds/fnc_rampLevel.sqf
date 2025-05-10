#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_rampLevel

Description:
    Opens the vehicle ramp

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle player]];
private _config = configOf _vehicle >> "UserActions" >> "Ramp_Level";

if (_vehicle != player && {isClass (_config)} && {_vehicle call FUNC(playerHasAccessToLights)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(rampOpen)), _vehicle];
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle player]];" + (getText (_config >> "condition")  regexReplace ["this", "_vehicle"]))) then {
        [_vehicle] call compile ("params [['_vehicle', vehicle player]];" + (getText (_config >> "statement")  regexReplace ["this", "_vehicle"]));
    };
    
};
