#include "script_component.hpp"

params ["_target"];
// systemChat ("_target - " + str _target);
_targetName = "";

switch (_target) do {
    case "TargetGrid"   : {_targetName = GVAR(gridTargetName)};
    case "TargetLast"   : {_targetName = GVAR(previousTarget)Name};
    case "TargetVisual" : {_targetName = "your mark"};
    case "Target01"     : {_targetName = GVAR(target01_Name)};
    case "Target02"     : {_targetName = GVAR(target02_Name)};
    case "Target03"     : {_targetName = GVAR(target03_Name)};
    case "Target04"     : {_targetName = GVAR(target04_Name)};
    case "Target05"     : {_targetName = GVAR(target05_Name)};
    case "Target06"     : {_targetName = GVAR(target06_Name)};
};
GVAR(previousTarget)Name = _targetName;
// systemChat ("_targetName - " + str _targetName);

_targetName
