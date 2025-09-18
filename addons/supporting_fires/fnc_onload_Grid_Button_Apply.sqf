#include "script_component.hpp"

[
    {ctrlSetText [1005, (format ["East: %1 - North: %2", ctrlText 1002, ctrlText 1003])]},
    [],
    0.1
] call CBA_fnc_waitAndExecute;
