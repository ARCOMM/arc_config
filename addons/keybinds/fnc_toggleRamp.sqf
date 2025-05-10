#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleRamp

Description:
    Toggles ramp open or closes

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle player]];
private _configOpen = configFile >> "CfgVehicles" >> typeOf _vehicle >> "UserActions" >> "Ramp_Open";

if (_vehicle != player && {isClass (_configOpen)} && {_vehicle call FUNC(playerHasAccessToLights)}) then {
    private _configClose = configFile >> "CfgVehicles" >> typeOf _vehicle >> "UserActions" >> "Ramp_Close";

    if (!isClass (_configClose)) exitWith {};
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleRamp)), _vehicle];
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle player]];" + (getText (_configClose >> "condition")  regexReplace ["this", "_vehicle"]))) exitWith {
        _vehicle call FUNC(rampClose)
    };
    if ([_vehicle] call compile ("params [['_vehicle', vehicle player]];" + (getText (_configOpen >> "condition")  regexReplace ["this", "_vehicle"]))) exitWith {
        _vehicle call FUNC(rampOpen)
    };
};

