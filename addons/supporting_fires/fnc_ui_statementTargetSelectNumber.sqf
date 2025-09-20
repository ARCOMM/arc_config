#include "script_component.hpp"

params ["_target"];

private _targetName = _target call FUNC(getTargetName);

[[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", _targetName])], true] call CBA_fnc_notify;
GVAR(targetType) = _target;
