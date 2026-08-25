#include "script_component.hpp"

// systemChat (QGVAR(ammoType) + " - " + str GVAR(ammoType));
// systemChat (QGVAR(volumeOfFire) + " - " + str GVAR(volumeOfFire));

private _ammoCount = 0;

if (GVAR(isWest)) then {
    // systemChat "side West";
    if (GVAR(ammoType) isEqualTo "HE") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsHE_AmmoCountWest)) exitWith {_ammoCount = -1};
        GVAR(shellsHE_AmmoCountWest) = GVAR(shellsHE_AmmoCountWest) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsHE_AmmoCountWest);
       _ammoCount = GVAR(shellsHE_AmmoCountWest);
        // systemChat "HE removed";
    };
    if (GVAR(ammoType) isEqualTo "Smoke") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsSmoke_AmmoCountWest)) exitWith {_ammoCount = -1};
        GVAR(shellsSmoke_AmmoCountWest) = GVAR(shellsSmoke_AmmoCountWest) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsSmoke_AmmoCountWest);
       _ammoCount = GVAR(shellsSmoke_AmmoCountWest);
        // systemChat "Smoke removed";
    };
    if (GVAR(ammoType) isEqualTo "Flare") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsFlare_AmmoCountWest)) exitWith {_ammoCount = -1};
        GVAR(shellsFlare_AmmoCountWest) = GVAR(shellsFlare_AmmoCountWest) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsFlare_AmmoCountWest);
       _ammoCount = GVAR(shellsFlare_AmmoCountWest);
        // systemChat "Flare removed";
    };
};
if (GVAR(isEast)) then {
    // systemChat "side east";
    if (GVAR(ammoType) isEqualTo "HE") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsHE_AmmoCountEast)) exitWith {_ammoCount = -1};
        GVAR(shellsHE_AmmoCountEast) = GVAR(shellsHE_AmmoCountEast) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsHE_AmmoCountEast);
       _ammoCount = GVAR(shellsHE_AmmoCountEast);
        // systemChat "HE removed";
    };
    if (GVAR(ammoType) isEqualTo "Smoke") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsSmoke_AmmoCountEast)) exitWith {_ammoCount = -1};
        GVAR(shellsSmoke_AmmoCountEast) = GVAR(shellsSmoke_AmmoCountEast) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsSmoke_AmmoCountEast);
       _ammoCount = GVAR(shellsSmoke_AmmoCountEast);
        // systemChat "Smoke removed";
    };
    if (GVAR(ammoType) isEqualTo "Flare") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsFlare_AmmoCountEast)) exitWith {_ammoCount = -1};
        GVAR(shellsFlare_AmmoCountEast) = GVAR(shellsFlare_AmmoCountEast) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsFlare_AmmoCountEast);
       _ammoCount = GVAR(shellsFlare_AmmoCountEast);
        // systemChat "Flare removed";
    };
};
if (GVAR(isGuer)) then {
    // systemChat "side RESISTANCE";
    if (GVAR(ammoType) isEqualTo "HE") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsHE_AmmoCountGuer)) exitWith {_ammoCount = -1};
        GVAR(shellsHE_AmmoCountGuer) = GVAR(shellsHE_AmmoCountGuer) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsHE_AmmoCountGuer);
       _ammoCount = GVAR(shellsHE_AmmoCountGuer);
        // systemChat "HE removed";
    };
    if (GVAR(ammoType) isEqualTo "Smoke") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsSmoke_AmmoCountGuer)) exitWith {_ammoCount = -1};
        GVAR(shellsSmoke_AmmoCountGuer) = GVAR(shellsSmoke_AmmoCountGuer) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsSmoke_AmmoCountGuer);
       _ammoCount = GVAR(shellsSmoke_AmmoCountGuer);
        // systemChat "Smoke removed";
    };
    if (GVAR(ammoType) isEqualTo "Flare") exitWith {
        if (GVAR(volumeOfFire) > GVAR(shellsFlare_AmmoCountGuer)) exitWith {_ammoCount = -1};
        GVAR(shellsFlare_AmmoCountGuer) = GVAR(shellsFlare_AmmoCountGuer) - GVAR(volumeOfFire);
        publicVariable QGVAR(shellsFlare_AmmoCountGuer);
       _ammoCount = GVAR(shellsFlare_AmmoCountGuer);
        // systemChat "Flare removed";
    };
};

// systemChat ("_ammoCount - " + str _ammoCount);

_ammoCount
