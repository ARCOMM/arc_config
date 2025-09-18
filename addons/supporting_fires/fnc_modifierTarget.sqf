#include "script_component.hpp"

params ["_params", "_targetNum"];
_params params ["_target", "_player", "_params", "_actionData"];

_actionData set [1, format ['%1', _targetNum call FUNC(getTargetName)]];
