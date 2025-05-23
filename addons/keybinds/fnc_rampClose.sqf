#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_rampClose

Description:
    Closes the vehicle ramp

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];
private _config = configOf _vehicle >> "UserActions" >> "Ramp_Close";

if (_vehicle != ace_player && {isClass (_config)} && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(rampClose)), _vehicle];
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_config >> "condition")  regexReplace ["this", "_vehicle"]))) then {
        [_vehicle] call compile ("params [['_vehicle', vehicle ace_player]];" + (getText (_config >> "statement")  regexReplace ["this", "_vehicle"]));
    };
    
};
