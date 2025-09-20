#include "script_component.hpp"

params ["_count"];

if (GVAR(isZEUS)) exitWith {true};
if (GVAR(batterySize) >= _count) exitWith {true};

false
