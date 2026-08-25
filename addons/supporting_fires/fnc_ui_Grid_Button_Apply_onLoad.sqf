#include "script_component.hpp"

if (GVAR(Grid_Target_X_Current) != "-1" && {GVAR(Grid_Target_Y_Current) != "-1"}) exitWith {};

[
    {ctrlSetText [1005, (format ["East: %1 - North: %2", GVAR(Grid_Target_X_Current), GVAR(Grid_Target_Y_Current)])]},
    [],
    0.1
] call CBA_fnc_waitAndExecute;
