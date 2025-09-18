#include "script_component.hpp"

params ["_count"];

if (_count == -1) exitWith {
    [
        ['Select the number of guns to fire,'],
        [format ['%1 out of %2 currently selected.', GVAR(numberOfGuns), GVAR(batterySize)]],
        true
    ] call CBA_fnc_notify
};

private _plural = "";
if (_count > 1) then {_plural = "s"};

[[format ["%1 gun%2 selected.", _count, _plural]], true] call CBA_fnc_notify;
GVAR(numberOfGuns) = _count;
