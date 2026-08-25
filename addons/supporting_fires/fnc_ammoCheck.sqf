#include "script_component.hpp"

// [] call FUNC(ammoCheck);

private ["_ammoCountHE", "_ammoCountSmoke", "_ammoCountFlare"];
// systemChat "ammo check started";

if (GVAR(isZEUS)) exitWith {
    [["As Zeus you have unlimited rounds for all types."], true] call CBA_fnc_notify;
};

if (GVAR(isWest)) then {
    // systemChat "west ammo counted";
   _ammoCountHE = GVAR(shellsHE_AmmoCountWest);
   _ammoCountSmoke = GVAR(shellsSmoke_AmmoCountWest);
   _ammoCountFlare = GVAR(shellsFlare_AmmoCountWest);
};

if (GVAR(isEast)) then {
    // systemChat "east ammo counted";
   _ammoCountHE = GVAR(shellsHE_AmmoCountEast);
   _ammoCountSmoke = GVAR(shellsSmoke_AmmoCountEast);
   _ammoCountFlare = GVAR(shellsFlare_AmmoCountEast);
};

if (GVAR(isGuer)) then {
    // systemChat "resistance ammo counted";
   _ammoCountHE = GVAR(shellsHE_AmmoCountGuer);
   _ammoCountSmoke = GVAR(shellsSmoke_AmmoCountGuer);
   _ammoCountFlare = GVAR(shellsFlare_AmmoCountGuer);
};

// systemChat (str _ammoCountHE);
// systemChat (str _ammoCountSmoke);
// systemChat (str _ammoCountFlare);
// systemChat "ammo count passed";

[["Roger, checking ammunition."], true] call CBA_fnc_notify;

[
    {
        params ["_ammoCountHE", "_ammoCountSmoke", "_ammoCountFlare"];
        [
            ["Available ammunition:"], 
            [(format ["%1 rounds HE, ", _ammoCountHE])], 
            [(format ["%1 rounds Smoke, ", _ammoCountSmoke])], 
            [(format ["%1 rounds Flare.", _ammoCountFlare])], 
            true
        ] call CBA_fnc_notify;
        // systemChat "ammo hint finished";
    }, 
    [_ammoCountHE, _ammoCountSmoke, _ammoCountFlare], 
    5
] call CBA_fnc_waitAndExecute;
// systemChat "ammo check finshed";
