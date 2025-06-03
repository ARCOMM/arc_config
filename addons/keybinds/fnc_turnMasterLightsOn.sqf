#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnMasterLightsOn

Description:
    Turn master light switch on

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
