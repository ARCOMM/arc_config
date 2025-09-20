#include "script_component.hpp"

params ["_actionData"];

if (GVAR(Grid_Target_X_Current) == "-1" || {GVAR(Grid_Target_Y_Current) == "-1"}) exitWith {};

_actionData set [1, format ['Target Grid - Current: %1-%2', GVAR(Grid_Target_X_Current), GVAR(Grid_Target_Y_Current)]];
