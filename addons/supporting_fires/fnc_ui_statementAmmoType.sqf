#include "script_component.hpp"

params [["_type", ""]];

if (_type == "") exitWith {
    [["Select the type of ammunition to fire, "], [format ["%1 currently selected.", GVAR(ammoType)]], true] call CBA_fnc_notify;
};

[
    [format ["%1 ammunition selected.", _type]],
    ["Select the number of rounds to fire."],
    true
] call CBA_fnc_notify;

GVAR(ammoType) = _type;
