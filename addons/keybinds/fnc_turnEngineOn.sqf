#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_turnEngineOn

Description:
    Turns engine on

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
        [_vehicle] remoteExecCall [QUOTE(FUNC(turnEngineOn)), _vehicle];
    };
    _vehicle engineOn true;
};
