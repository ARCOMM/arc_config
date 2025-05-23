#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnCollisionLightsOn

Description:
    Turns collision lights on

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];

if (_vehicle != ace_player && {_vehicle call FUNC(playerHasAccessToControls)}) then {
    if !(_vehicle getVariable ["arc_cfg_keybinds_MasterLightsOn", false]) exitWith {
        _vehicle setVariable ["arc_cfg_keybinds_CollisionLightsOn", true, true];
    };
    if !(local _vehicle) exitWith {
        [_vehicle] remoteExecCall [QUOTE(FUNC(turnCollisionLightsOn)), _vehicle];
    };
    _vehicle setVariable ["arc_cfg_keybinds_CollisionLightsOn", true, true];
    _vehicle setCollisionLight true;
};
