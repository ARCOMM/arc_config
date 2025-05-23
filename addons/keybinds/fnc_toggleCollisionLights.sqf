#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleCollisionLights

Description:
    Toggle collision lights on or off

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];

if (_vehicle != ace_player && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleCollisionLights)), _vehicle];
    };
    if (_vehicle getVariable ["arc_cfg_keybinds_CollisionLightsOn", false]) exitWith {
        _vehicle call FUNC(turnCollisionLightsOff)
    };
    _vehicle call FUNC(turnCollisionLightsOn)
};
