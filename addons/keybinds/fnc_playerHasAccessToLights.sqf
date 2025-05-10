#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_playerHasAccessToLights

Description:
    Toggle collision lights on or off

Parameters:
    none

Returns:
    Nothing

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle player]];

driver _vehicle == player || {currentPilot _vehicle == player} || {getNumber ([_vehicle, _vehicle unitTurret player] call CBA_fnc_getTurret >> "isCopilot") == 1}
