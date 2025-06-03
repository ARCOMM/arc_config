#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleMainLights

Description:
    Toggle main lights on or off

Parameters:
    0: The vehicle the player is in. <OBJECT> (default: vehicle ace_player)

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];

if (_vehicle != ace_player && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleMainLights)), _vehicle];
    };
    if (_vehicle getVariable ["arc_cfg_keybinds_MainLightsOn", false]) exitWith {
        _vehicle call FUNC(turnMainLightsOff)
    };
    _vehicle call FUNC(turnMainLightsOn)
};
