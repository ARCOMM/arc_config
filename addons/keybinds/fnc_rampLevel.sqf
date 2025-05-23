#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_rampLevel

Description:
    Opens the vehicle ramp

Parameters:
    0: The vehicle the player is in. <OBJECT> (default: vehicle ace_player)

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];
private _config = configOf _vehicle >> "UserActions" >> "Ramp_Level";

if (_vehicle != ace_player && {isClass (_config)} && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(rampOpen)), _vehicle];
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_config >> "condition")  regexReplace ["this", "_vehicle"]))) then {
        [_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_config >> "statement")  regexReplace ["this", "_vehicle"]));
    };
    
};
