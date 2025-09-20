#include "script_component.hpp"

params ["_displayorcontrol"];

[
    {
        params ["_displayorcontrol"];
        if (GVAR(Grid_Target_X_Current) == "-1" || {GVAR(Grid_Target_Y_Current) == "-1"}) then {GVAR(Grid_Target_X_Current) = ""};
        _displayorcontrol ctrlSetText GVAR(Grid_Target_X_Current);
    },
    _displayorcontrol,
    0.01
] call CBA_fnc_waitAndExecute;
