#include "script_component.hpp"

params [["_coords", [-1, -1]]];

if (_coords isEqualTo [-1, -1]) exitWith {
    if (GVAR(adjustmentCoords) isEqualTo [0, 0]) then {
        [["Select the direction and distance to adjust fire, "], ["No adjustment currently requested."], true] call CBA_fnc_notify;
    } else {
        [["Select the direction and distance to adjust fire, "], [format ["Current adjustment is %1.", GVAR(adjustmentDirection)]], true] call CBA_fnc_notify;
    };
};

switch (_coords) do {
    case [0, 0] : {
        GVAR(targetType) = "TargetLast";
        GVAR(adjustmentDirection) = "with no adjustment";
        [["No fire adjustment will be made"], true] call CBA_fnc_notify;
    };
    case [0, 50] : {
        GVAR(adjustmentDirection) = "adjust fire north 50m";
        [["Adjust fire 50m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [0, 100] : {
        GVAR(adjustmentDirection) = "adjust fire north 100m";
        [["Adjust fire 100m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [35.4, 35.4] : {
        GVAR(adjustmentDirection) = "adjust fire northeast 50m";
        [["Adjust fire 50m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [70.7, 70.7] : {
        GVAR(adjustmentDirection) = "adjust fire northeast 100m";
        [["Adjust fire 100m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [50, 0] : {
        GVAR(adjustmentDirection) = "adjust fire east 50m";
        [["Adjust fire 50m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [100, 0] : {
        GVAR(adjustmentDirection) = "adjust fire east 100m";
        [["Adjust fire 100m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [35.4, -35.4] : {
        GVAR(adjustmentDirection) = "adjust fire southeast 50m";
        [["Adjust fire 50m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [70.7, -70.7] : {
        GVAR(adjustmentDirection) = "adjust fire southeast 100m";
        [["Adjust fire 100m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [0, -50] : {
        GVAR(adjustmentDirection) = "adjust fire south 50m";
        [["Adjust fire 50m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [0, -100] : {
        GVAR(adjustmentDirection) = "adjust fire south 100m";
        [["Adjust fire 100m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-35.4, -35.4] : {
        GVAR(adjustmentDirection) = "adjust fire southwest 50m";
        [["Adjust fire 50m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-70.7, -70.7] : {
        GVAR(adjustmentDirection) = "adjust fire southwest 100m";
        [["Adjust fire 100m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-50, 0] : {
        GVAR(adjustmentDirection) = "adjust fire West 50m";
        [["Adjust fire 50m West.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-100, 0] : {
        GVAR(adjustmentDirection) = "adjust fire West 100m";
        [["Adjust fire 100m West.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-35.4, 35.4] : {
        GVAR(adjustmentDirection) = "adjust fire northwest 50m";
        [["Adjust fire 50m northwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
    };
    case [-70.7, 70.7] : {
        GVAR(adjustmentDirection) = "adjust fire northwest 100m";
        [["Adjust fire 100m northwest.<br/>Select the type of ammunition to use."], true] call CBA_fnc_notify;
    };
};

GVAR(adjustmentCoords) = _coords;

