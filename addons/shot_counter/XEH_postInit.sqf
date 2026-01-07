#include "script_component.hpp"

if (isServer) then {
    ["All", "init", {
        params ["_object"];
        if !(_object getVariable [QGVAR(added_shotCount), false]) then {
            [QGVAR(event_addEH), _object] call CBA_fnc_serverEvent;
            _object setVariable [QGVAR(added_shotCount), true];
        };
    }] call CBA_fnc_addClassEventHandler;

    [{ CBA_missionTime > 0 }, {
        {
            if !(_x getVariable [QGVAR(added_shotCount), false]) then {
                _x setVariable [QGVAR(added_shotCount), true];
                _x call FUNC(addEH);
            };
        } forEach allMissionObjects "All";
    }] call CBA_fnc_waitUntilAndExecute;

    ["ace_advanced_throwing_throwFiredXEH", {
        params ["_unit", "", "", "", "", "_magazine"];
        [side group _unit, _magazine call FUNC(getDisplayName)] call FUNC(shotCount);
    }] call CBA_fnc_addEventHandler;

    [
        {
            publicVariable QGVAR(expendedAmmunitionWest);
            publicVariable QGVAR(expendedAmmunitionEast);
            publicVariable QGVAR(expendedAmmunitionResistance);
        },
        1, //time between checks in seconds. 0 = each frame
        []
    ] call CBA_fnc_addPerFrameHandler;
};

if (hasInterface) then {
    if (didJIP) then {
        if !(player getVariable [QGVAR(added_shotCount), false]) then {
            player setVariable [QGVAR(added_shotCount), true];
            [QGVAR(event_addEH), player] call CBA_fnc_serverEvent;
        };
    };
};

addMissionEventHandler ["Ended", {
    params ["_endType"];
    [] call FUNC(shotDisplay);
}];
