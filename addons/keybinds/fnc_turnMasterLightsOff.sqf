#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnMasterLightsOff

Description:
    Turn master light switch off

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
    _vehicle setVariable ["arc_cfg_keybinds_MasterLightsOn", false, true];
    _vehicle setCollisionLight false;
    _vehicle setPilotLight false;
};
