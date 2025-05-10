#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnMasterLightsOn

Description:
    Turn master light switch on

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
        [_vehicle] remoteExecCall [QUOTE(FUNC(turnMasterLightsOff)), _vehicle];
    };
    _vehicle setVariable ["arc_cfg_keybinds_MasterLightsOn", true, true];
    if (_vehicle getVariable ["arc_cfg_keybinds_CollisionLightsOn", false]) then {
        _vehicle setCollisionLight true;
    };
    if (_vehicle getVariable ["arc_cfg_keybinds_MainLightsOn", false]) then {
        _vehicle setPilotLight true;
    };
};
