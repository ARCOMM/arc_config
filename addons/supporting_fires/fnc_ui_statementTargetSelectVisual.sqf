#include "script_component.hpp"

private _cancelled = false;
private _terrainPosition = screenToWorld [0.5, 0.5];
private _targetDistance = player distance2D _terrainPosition;
if (_targetDistance < (0.75 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
    [["Negative, target is too close to your position.<br/>Check your target."]] call CBA_fnc_notify;
   _cancelled = true;
} else {
    if (_targetDistance < (1.5 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
        [["Warning, target is danger close to your position."]] call CBA_fnc_notify;
    };
    GVAR(targetVisualLocation) = _terrainPosition;
};
if (_cancelled) exitWith {
    // systemChat "Fire mission canceled";
};

[["Target is your mark."], true] call CBA_fnc_notify;

GVAR(targetType) = "TargetVisual";
