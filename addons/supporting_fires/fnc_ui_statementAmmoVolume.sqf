#include "script_component.hpp"

params ["_count", "_type"];

private _plural = "";
if (_count > 1) then {_plural = "s"};

[[format ["%1 round%2 %3 selected.", _count, _plural, _type]], true] call CBA_fnc_notify;
GVAR(volumeOfFire) = _count;
