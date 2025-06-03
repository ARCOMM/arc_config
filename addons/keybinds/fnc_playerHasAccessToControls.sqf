#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Internal Function: arc_cfg_keybinds_fnc_playerHasAccessToControls

Description:
    Toggle collision lights on or off

Parameters:
    0: The vehicle the player is in. <OBJECT> (default: vehicle ace_player)

Returns:
    0: True if player is the driver, pilot, or copilot <BOOL>

Author:
    drofseh
---------------------------------------------------------------------------- */
params [["_vehicle", vehicle ace_player]];

driver _vehicle == ace_player || {currentPilot _vehicle == ace_player} || {getNumber ([_vehicle, _vehicle unitTurret ace_player] call CBA_fnc_getTurret >> "isCopilot") == 1}
