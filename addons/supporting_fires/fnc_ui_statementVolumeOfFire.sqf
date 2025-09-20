#include "script_component.hpp"

[
    ["Select the number of rounds to fire,"],
    [format ["%1 currently selected.", GVAR(volumeOfFire)]],
    true
] call CBA_fnc_notify
