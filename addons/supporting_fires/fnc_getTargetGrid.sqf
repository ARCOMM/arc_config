#include "script_component.hpp"

params [
    "_TargetGrid_gridX", 
    "_GVAR(targetGrid)_gridY"
];
/*
_TargetGrid_gridX = (_TargetGrid_gridX splitString ".") select 0;
_TargetGrid_gridY = (_TargetGrid_gridY splitString ".") select 0;
*/
if ((count _TargetGrid_gridX) != 3 || {(count _TargetGrid_gridY) != 3}) exitWith {
    "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
};

private _TargetGrid_testFail = false;

{
   _TargetGrid_testValue = toArray _x;
    if !((_TargetGrid_testValue select 0) in [48, 49, 50, 51, 52, 53, 54, 55, 56, 57]) exitWith {
       _TargetGrid_testFail = true;
    };
} forEach ((_TargetGrid_gridX splitString "") + (_TargetGrid_gridY splitString ""));

if (_TargetGrid_testFail) exitWith {
    "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
};

[
    ["Target Grid:"], 
    [format ["East:  %1 - North: %2", _TargetGrid_gridX, _TargetGrid_gridY]]
] call CBA_fnc_notify;

GVAR(gridTargetName) = format ["Grid %1 %2", _TargetGrid_gridX, _TargetGrid_gridY];

_TargetGrid_gridX = (parseNumber _TargetGrid_gridX) * 100 + 50;
_TargetGrid_gridY = (parseNumber _TargetGrid_gridY) * 100 + 50;

GVAR(targetGrid) = [_TargetGrid_gridX, _TargetGrid_gridY, 0];
GVAR(targetType) = "TargetGrid";

//hint format ["TarX: %1 - Y: %2", _TargetGrid_gridX, _TargetGrid_gridY];
//systemChat format ["X: %1 - Y: %2", _TargetGrid_gridX, _TargetGrid_gridY];
//systemChat str GVAR(targetGrid);
