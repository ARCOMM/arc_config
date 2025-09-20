#include "script_component.hpp"

[
    [format ["Fire on %1 will be repeated.<br/>Select adjustment if required, and the type of ammunition to use.", "TargetLast" call FUNC(getTargetName)]],
    true
] call CBA_fnc_notify;

GVAR(targetType) = "TargetLast";
GVAR(firstRepeat) = true;
