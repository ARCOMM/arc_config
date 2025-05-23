#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_playerHasAccessToControls

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

driver _vehicle == ace_player || {currentPilot _vehicle == ace_player} || {getNumber ([_vehicle, _vehicle unitTurret ace_player] call CBA_fnc_getTurret >> "isCopilot") == 1}
