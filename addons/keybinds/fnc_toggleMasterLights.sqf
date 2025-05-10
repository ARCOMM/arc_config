#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_toggleMasterLights

Description:
    Toggle master light switch on or off, restricting or allowing other lights to fuction

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
        [_vehicle] remoteExecCall [QUOTE(FUNC(toggleMasterLights)), _vehicle];
    };
    if (_vehicle getVariable ["arc_cfg_keybinds_MasterLightsOn", true]) exitWith {
        _vehicle call FUNC(turnMasterLightsOff)
    };
    _vehicle call FUNC(turnMasterLightsOn)
};
