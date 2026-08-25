#include "script_component.hpp"

params ["_count", "_type"];

if (GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}) exitWith {true};
if (GVAR(isWest) && {GVAR(fireMissionAvailableWest)}) exitWith {
    if (_type == "HE" && GVAR(shellsHE_AmmoCountWest) >= _count) exitWith {true};
    if (_type == "Smoke" && GVAR(shellsHE_AmmoCountWest) >= _count) exitWith {true};
    if (_type == "Flare" && GVAR(shellsHE_AmmoCountWest) >= _count) exitWith {true};
};
if (GVAR(isEast) && {GVAR(fireMissionAvailableEast)}) exitWith {
    if (_type == "HE" && GVAR(shellsHE_AmmoCountEast) >= _count) exitWith {true};
    if (_type == "Smoke" && GVAR(shellsHE_AmmoCountEast) >= _count) exitWith {true};
    if (_type == "Flare" && GVAR(shellsHE_AmmoCountEast) >= _count) exitWith {true};
};
if (GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}) exitWith {
    if (_type == "HE" && GVAR(shellsHE_AmmoCountGuer) >= _count) exitWith {true};
    if (_type == "Smoke" && GVAR(shellsHE_AmmoCountGuer) >= _count) exitWith {true};
    if (_type == "Flare" && GVAR(shellsHE_AmmoCountGuer) >= _count) exitWith {true};
};

false
