#include "script_component.hpp"

// [side, type, number, target, [adjustmentX, Y]]
// ["HE", 5, "Target01", [0, 0]] call FUNC(fireMission);

params [
    ["_type", "Smoke"], 
    ["_target", "TargetVisual"], 
    ["_adjust", [0, 0]]
];

// systemChat "Mission start";
// systemChat ("_type - " + str _type);
// systemChat ("_target - " + str _target);
// systemChat ("_adjust - " + str _adjust);
// systemChat ("_accuracy - " + str _accuracy);

private _targetName = _target call FUNC(getTargetName);
// systemChat_target;
// systemChat_targetName;

private _targetXY = [_target, _adjust] call FUNC(getTargetLocation);
// systemChat ("_targetXY - " + str _targetXY);

// check if player is too close to target
private _cancelled = false;
private _warning = "";
if (!GVAR(isZEUS)) then {
    private _targetDistance = player distance2D _targetXY;
    if (_targetDistance < (0.75 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
        [[(format ["Negative, %1 is too close to your position.<br/>No fire mission.", _targetName])], true] call CBA_fnc_notify;
       _cancelled = true;
    } else {
        if (_targetDistance < (1.5 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
           _warning = "<br/>Warning, target is danger closer, take cover.";
        };
    };
};

if (_cancelled) exitWith {
    // systemChat "Fire mission canceled";
};

private _adjustDir = "";
if (_target isEqualTo "TargetLast" && {supportFire_firstRepeat}) then {
   _adjustDir = format [" %1", GVAR(adjustmentDirection)];
    supportFire_firstRepeat = false;
};

private _ammoLeft = "Infinite";
if (!GVAR(isZEUS)) then {
   _ammoLeft = [] call FUNC(removeAmmo);
    // systemChat ("_ammoLeft - " + str _ammoLeft);

    // cancel if not enough ammo
    if (_ammoLeft < 0) exitWith {
        // systemChat "Fire mission canceled";
        [[(format ["Negative, not enough %1 rounds available.", _type])], true] call CBA_fnc_notify;
        [] call FUNC(ammoCheck);
    };
};

// make fire missions unavailable for that side
if (GVAR(isZEUS)) then {
    GVAR(fireMissionAvailableZeus) = false;
    publicVariable QGVAR(fireMissionAvailableZeus);
    // systemChat "Fire missions disabled";
};
if (GVAR(isWest)) then {
    GVAR(fireMissionAvailableWest) = false;
    publicVariable QGVAR(fireMissionAvailableWest);
    // systemChat "Fire missions disabled";
};
if (GVAR(isEast)) then {
    GVAR(fireMissionAvailableEast) = false;
    publicVariable QGVAR(fireMissionAvailableEast);
    // systemChat "Fire missions disabled";
};
if (GVAR(isGuer)) then {
    GVAR(fireMissionAvailableGuer) = false;
    publicVariable QGVAR(fireMissionAvailableGuer);
    // systemChat "Fire missions disabled";
};

private _grammarRounds = "rounds";

if (GVAR(volumeOfFire) == 1) then {
   _grammarRounds = "round";
};

private _grammarGuns = "guns";

if (GVAR(numberOfGuns) == 1) then {
   _grammarGuns = "gun";
};

[[(format ["Roger, fire mission, %1 %2 %3, from %4 %5, on %6%7.%8", GVAR(volumeOfFire), _grammarRounds, _type, GVAR(numberOfGuns), _grammarGuns, _targetName, _adjustDir, _warning])], true] call CBA_fnc_notify;

supportFire_lastTargetX = _targetXY select 0;
supportFire_lastTargetY = _targetXY select 1;
GVAR(adjustmentCoords) = [0, 0];

private _layingDelay = 0;
if (!GVAR(isZEUS)) then {
    if (_target isEqualTo "TargetVisual") then {
        // systemChat "Visual Target Delays";
       _layingDelay = round random [20, 28, 36];
    } else {
        // systemChat "Non-Visual Target Delays";
       _layingDelay = round random [4, 8, 12];
    };
};

private _completionDelay = round (_layingDelay + (3 * (1 max (GVAR(volumeOfFire) / GVAR(numberOfGuns)))));
// systemChat ("_layingDelay - " + str _layingDelay);
// systemChat ("_completionDelay - " + str _completionDelay);

[_type, _targetXY, _targetName, _layingDelay] call FUNC(barrage);

[
    {
        params [
            "_type", 
            "_ammoLeft", 
            "_targetName", 
            "_grammarRounds"
        ];

        if (GVAR(isZEUS)) then {
            [
                [(format ["Rounds complete on %1.", _targetName])], 
                true
            ] call CBA_fnc_notify;
        } else {
            [
                [(format ["Rounds complete on %1.", _targetName])], 
                [(format ["%1 %2 %3 remaining.", _ammoLeft, _grammarRounds, _type])], 
                true
            ] call CBA_fnc_notify;
        };
        // systemChat "Rounds complete";

        // make fire missions available again for the players side
        if (GVAR(isZEUS)) exitWith {
            GVAR(fireMissionAvailableZeus) = true;
            publicVariable QGVAR(fireMissionAvailableZeus);
            // systemChat "Fire missions enabled";
        };
        if (GVAR(isWest)) exitWith {
            GVAR(fireMissionAvailableWest) = true;
            publicVariable QGVAR(fireMissionAvailableWest);
            // systemChat "Fire missions enabled";
        };
        if (GVAR(isEast)) exitWith {
            GVAR(fireMissionAvailableEast) = true;
            publicVariable QGVAR(fireMissionAvailableEast);
            // systemChat "Fire missions enabled";
        };
        if (GVAR(isGuer)) exitWith {
            GVAR(fireMissionAvailableGuer) = true;
            publicVariable QGVAR(fireMissionAvailableGuer);
            // systemChat "Fire missions enabled";
        };
    }, 
    [_type, _ammoLeft, _targetName, _grammarRounds], 
   _completionDelay
] call CBA_fnc_waitAndExecute;
