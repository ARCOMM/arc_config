#include "script_component.hpp"

if (GVAR(isCiv) && {!GVAR(isZEUS)}) then {
    [["Return possession of this radio to the appropriate military authorities!"], true] call CBA_fnc_notify;
} else {
    [["Select a target, type of ammunition, and number of rounds, then call the fire mission."], true] call CBA_fnc_notify;
};
