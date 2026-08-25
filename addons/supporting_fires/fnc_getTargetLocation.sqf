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

   _targetLoc = GVAR(previousTargetLoc);

    if !(GVAR(isZEUS)) then {
        if (GVAR(repeatFireBonus) < 1) then {GVAR(repeatFireBonus) = 1};
        GVAR(repeatFireBonus) = GVAR(repeatFireBonus) + 0.2;
        if (GVAR(repeatFireBonus) >= 3) then {GVAR(repeatFireBonus) = 3};

        GVAR(shellDispersion) = GVAR(originalShellDispersion) / GVAR(repeatFireBonus);
        GVAR(shellAccuracy) = GVAR(originalShellAccuracy) / GVAR(repeatFireBonus);
    };
   _accuracy = GVAR(shellAccuracy);

    // systemChat (QGVAR(shellDispersion) + " - " + str GVAR(shellDispersion));
    // systemChat (QGVAR(shellAccuracy) + " - " + str GVAR(shellAccuracy));
    // systemChat ("_accuracy - " + str _accuracy);

   _targetX = (GVAR(lastTargetX)) +_adjustX + (random [-_accuracy, 0, _accuracy]);
   _targetY = (GVAR(lastTargetY)) +_adjustY + (random [-_accuracy, 0, _accuracy]);

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
    switch (_target) do {
        case ("TargetGrid") : {
           _targetLoc = GVAR(targetGrid);
        };
        case ("TargetVisual") : {
           _targetLoc = screenToWorld [0.5, 0.5];
        };
        case ("Target01") : {
           _targetLoc = getMarkerPos GVAR(target01);
        };
        case ("Target02") : {
           _targetLoc = getMarkerPos GVAR(target02);
        };
        case ("Target03") : {
           _targetLoc = getMarkerPos GVAR(target03);
        };
        case ("Target04") : {
           _targetLoc = getMarkerPos GVAR(target04);
        };
        case ("Target05") : {
           _targetLoc = getMarkerPos GVAR(target05);
        };
        case ("Target06") : {
           _targetLoc = getMarkerPos GVAR(target06);
        };
    };
    // systemChat ("_targetLoc - " + str _targetLoc);

    // sets newest target as repeat target and resets accuracy/dispersion bonus
    GVAR(previousTarget) = _target;
    GVAR(previousTargetLoc) = _targetLoc;
    GVAR(repeatFireBonus) = 1;

    // systemChat (QGVAR(previousTarget) + " - " + str GVAR(previousTarget));
    // systemChat ("GVAR(previousTargetLoc) - " + str GVAR(previousTargetLoc));
    // systemChat ("GVAR(repeatFireBonus) - " + str GVAR(repeatFireBonus));

   _targetX = (_targetLoc select 0) + (random [-_accuracy, 0, _accuracy]);
   _targetY = (_targetLoc select 1) + (random [-_accuracy, 0, _accuracy]);

    // systemChat ("_targetX - " + str _targetX);
    // systemChat ("_targetY - " + str _targetY);
};

[_targetX, _targetY]
