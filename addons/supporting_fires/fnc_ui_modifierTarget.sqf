#include "script_component.hpp"

params ["_actionData", "_target"];

_actionData set [1, format ['%1', _target call FUNC(getTargetName)]];
