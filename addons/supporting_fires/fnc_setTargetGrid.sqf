#include "script_component.hpp"

params [
    "_targetGrid_gridX", 
    "_targetGrid_gridY"
];

if ((count _targetGrid_gridX) != 3 || {(count _targetGrid_gridY) != 3}) exitWith {
    "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
};

private _targetGrid_testFail = false;

{
   _targetGrid_testValue = toArray _x;
    if !((_targetGrid_testValue select 0) in [48, 49, 50, 51, 52, 53, 54, 55, 56, 57]) exitWith {
       _targetGrid_testFail = true;
    };
} forEach ((_targetGrid_gridX splitString "") + (_targetGrid_gridY splitString ""));

if (_targetGrid_testFail) exitWith {
    "Target grid format is invalid, please input correct grid format." call CBA_fnc_notify;
};

[
    ["Target Grid:"], 
    [format ["East:  %1 - North: %2", _targetGrid_gridX, _targetGrid_gridY]]
] call CBA_fnc_notify;

GVAR(gridTargetName) = format ["Grid %1 %2", _targetGrid_gridX, _targetGrid_gridY];

_targetGrid_gridX = (parseNumber _targetGrid_gridX) * 100 + 50;
_targetGrid_gridY = (parseNumber _targetGrid_gridY) * 100 + 50;

GVAR(targetGrid) = [_targetGrid_gridX, _targetGrid_gridY, 0];
GVAR(targetType) = "TargetGrid";
