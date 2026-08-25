#include "script_component.hpp"

[["Select a target, "], [format ["Current target is %1.", GVAR(previousTargetName) call FUNC(getTargetName)]], true] call CBA_fnc_notify;
