#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleMainLights

Description:
    Toggle main lights on or off

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle player]];

if (_vehicle != player && {_vehicle call FUNC(playerHasAccessToLights)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleMainLights)), _vehicle];
    };
    if (_vehicle getVariable ["arc_cfg_keybinds_MainLightsOn", false]) exitWith {
        _vehicle call FUNC(turnMainLightsOff)
    };
    _vehicle call FUNC(turnMainLightsOn)
};
