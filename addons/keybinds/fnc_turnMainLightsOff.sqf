#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnMainLightsOff

Description:
    Turns main lights off

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
        [_vehicle] remoteExecCall [QUOTE(FUNC(turnMainLightsOff)), _vehicle];
    };
    _vehicle setVariable ["arc_cfg_keybinds_MainLightsOn", false, true];
    _vehicle setPilotLight false;
};
