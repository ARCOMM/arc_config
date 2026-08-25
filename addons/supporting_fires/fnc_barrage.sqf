#include "script_component.hpp"

params [
    "_type", 
    "_targetXY", 
    "_targetName", 
    "_layingDelay"
];

private _targetX = _targetXY select 0;
private _targetY = _targetXY select 1;

private _timeToImpact = 0;
if (!GVAR(isZEUS)) then {
   _timeToImpact = 30;
};

// systemChat str _this;
// systemChat ("_targetX - " + str _targetX);
// systemChat ("_targetY - " + str _targetY);
// systemChat "fake time to impact simulation started";

[
    {
        params ["_targetName", "_timeToImpact"];

        [
            [(format ["Shots out on %1.", _targetName])], 
            [(format ["%1 seconds to impact.", _timeToImpact])], 
            ["Watch for splash."], 
            true
        ] call CBA_fnc_notify;
        // systemChat "Shots Out";
    }, 
   [_targetName, _timeToImpact],
   _layingDelay
] call CBA_fnc_waitAndExecute;

[
    {
        params [
            "_type", 
            "_targetX", 
            "_targetY", 
            "_targetName"
        ];
        // systemChat "fake time-to-impact simulation over";

        private _bombType = GVAR(shellsHE_Type);
        if (_type isEqualTo "Smoke") then {
           _bombType = GVAR(shellsSmoke_Type);
        };
        if (_type isEqualTo "Flare") then {
           _bombType = GVAR(shellsFlare_Type);
        };
        // systemChat (str _bombType);

        private _shotDelay = (random [0.1, 0.2, 0.5]);
        private _rounds_fired = 0;

        [
            [(format ["Splash out on %1.", _targetName])], 
            true
        ] call CBA_fnc_notify;
        // systemChat "Splash out";

        for "_i" from 1 to GVAR(volumeOfFire) do {
            [
                {
                    params [
                        "_bombType", 
                        "_targetX", 
                        "_targetY"
                    ];

                    private _bomb = _bombType createVehicle [_targetX, _targetY, 300];
                    // systemChat ("_bombType - " + str _bombType);

                    private _bombPosition = _bomb getPos [random GVAR(shellDispersion), random 360];
                    // systemChat ("_bombPosition - " + str _bombPosition);

                    private _bombPositionX = (_bombPosition select 0);
                    // systemChat ("_bombPositionX - " + str _bombPositionX);

                    private _bombPositionY = (_bombPosition select 1);
                    // systemChat ("_bombPositionY - " + str _bombPositionY);

                   _bomb setPos [_bombPositionX, _bombPositionY, 300];
                   _bomb setVelocity [0, 0, -10];
                }, 
                [_bombType, _targetX, _targetY], 
               _shotDelay
            ] call CBA_fnc_waitAndExecute;

           _rounds_fired = _rounds_fired + 1;
           _shotDelay = _shotDelay + (random [0.1, 0.2, 0.5]);
            // systemChat ("_rounds_fired - " + str _rounds_fired);
            // systemChat ("_shotDelay - " + str _shotDelay);

            if (_rounds_fired >= GVAR(numberOfGuns)) then {
               _shotDelay = _shotDelay + 3;
               _rounds_fired = 0;
            };
        };
    }, 
    [_type, _targetX, _targetY, _targetName], 
   _timeToImpact +_layingDelay
] call CBA_fnc_waitAndExecute;
// systemChat "Barrage over";
