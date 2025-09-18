#include "script_component.hpp"

params ["_displayorcontrol"];

[
    {
        params ["_displayorcontrol"];
        if (isNil QGVAR(Grid_Target_Y_Current)) then {GVAR(Grid_Target_Y_Current) = "000"};
        _displayorcontrol ctrlSetText GVAR(Grid_Target_Y_Current);
    },
    _displayorcontrol,
    0.01
] call CBA_fnc_waitAndExecute;
