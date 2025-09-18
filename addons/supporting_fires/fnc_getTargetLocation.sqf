#include "script_component.hpp"

params [
    "_target",
    "_adjust"
];

private _adjustX = _adjust select 0;
private _adjustY = _adjust select 1;

private _targetLoc = [0, 0];
private _targetX = 0;
private _targetY = 0;

// systemChat ("_target - " + str _target);
// systemChat ("_accuracy - " + str _accuracy);
// systemChat ("_adjust - " + str _adjust);

// checks for repeat target
// if true apply accuracy/dispersion bonus and recalculate
// else reset accuracy and calculate the new target
if (_target isEqualTo "TargetLast") then {

   _targetLoc = GVAR(previousTarget)Loc;

    if !(GVAR(isZEUS)) then {
        if (supportFire_repeatFireBonus < 1) then {supportFire_repeatFireBonus = 1};
        supportFire_repeatFireBonus = supportFire_repeatFireBonus + 0.2;
        if (supportFire_repeatFireBonus >= 3) then {supportFire_repeatFireBonus = 3};

        GVAR(shellDispersion) = GVAR(originalShellDispersion) / supportFire_repeatFireBonus;
        GVAR(shellAccuracy) = GVAR(originalShellAccuracy) / supportFire_repeatFireBonus;
    };
   _accuracy = GVAR(shellAccuracy);

    // systemChat (QGVAR(shellDispersion) + " - " + str GVAR(shellDispersion));
    // systemChat (QGVAR(shellAccuracy) + " - " + str GVAR(shellAccuracy));
    // systemChat ("_accuracy - " + str _accuracy);

   _targetX = (supportFire_lastTargetX) +_adjustX + (random [-_accuracy, 0, _accuracy]);
   _targetY = (supportFire_lastTargetY) +_adjustY + (random [-_accuracy, 0, _accuracy]);

    // systemChat ("_targetX - " + str _targetX);
    // systemChat ("_targetY - " + str _targetY);

} else {

    // resets dispesion and accuracy to original values
    GVAR(shellDispersion) = GVAR(originalShellDispersion);
    GVAR(shellAccuracy) = GVAR(originalShellAccuracy);
   _accuracy = GVAR(shellAccuracy);

    // systemChat (QGVAR(shellDispersion) + " - " + str GVAR(shellDispersion));
    // systemChat (QGVAR(shellAccuracy) + " - " + str GVAR(shellAccuracy));
    // systemChat ("_accuracy - " + str _accuracy);

    // gets new target location
    switch (true) do {
        case (_target isEqualTo "TargetGrid") : {
           _targetLoc = GVAR(targetGrid);
        };
        case (_target isEqualTo "TargetVisual") : {
           _targetLoc = screenToWorld [0.5, 0.5];
        };
        case (_target isEqualTo "Target01") : {
           _targetLoc = getMarkerPos GVAR(target01);
        };
        case (_target isEqualTo "Target02") : {
           _targetLoc = getMarkerPos GVAR(target02);
        };
        case (_target isEqualTo "Target03") : {
           _targetLoc = getMarkerPos GVAR(target03);
        };
        case (_target isEqualTo "Target04") : {
           _targetLoc = getMarkerPos GVAR(target04);
        };
        case (_target isEqualTo "Target05") : {
           _targetLoc = getMarkerPos GVAR(target05);
        };
        case (_target isEqualTo "Target06") : {
           _targetLoc = getMarkerPos GVAR(target06);
        };
    };
    // systemChat ("_targetLoc - " + str _targetLoc);

    // sets newest target as repeat target and resets accuracy/dispersion bonus
    GVAR(previousTarget) = _target;
    GVAR(previousTarget)Loc = _targetLoc;
    supportFire_repeatFireBonus = 1;

    // systemChat (QGVAR(previousTarget) + " - " + str GVAR(previousTarget));
    // systemChat ("GVAR(previousTarget)Loc - " + str GVAR(previousTarget)Loc);
    // systemChat ("supportFire_repeatFireBonus - " + str supportFire_repeatFireBonus);

   _targetX = (_targetLoc select 0) + (random [-_accuracy, 0, _accuracy]);
   _targetY = (_targetLoc select 1) + (random [-_accuracy, 0, _accuracy]);

    // systemChat ("_targetX - " + str _targetX);
    // systemChat ("_targetY - " + str _targetY);
};

[_targetX, _targetY]
