#include "script_component.hpp"

if (isServer) then {
    ["All", "init", {
        if !((_this select 0) getVariable [QGVAR(added_shotCount),false]) then {
            [QGVAR(event_addEH), (_this select 0)] call CBA_fnc_serverEvent;
            (_this select 0) setVariable [QGVAR(added_shotCount),true];
        };
    }] call CBA_fnc_addClassEventHandler;

    [{ CBA_missionTime > 0 }, {
        {
            if !(_x getVariable [QGVAR(added_shotCount),false]) then {
                _x setVariable [QGVAR(added_shotCount),true];
                _x call FUNC(addEH);
            };
        } forEach allMissionObjects "All";
    }] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface) then {
    if (didJIP) then {
        [{!isNull player}, {
            if !(player getVariable [QGVAR(added_shotCount),false]) then {
                player setVariable [QGVAR(added_shotCount),true];
                [QGVAR(event_addEH), player] call CBA_fnc_serverEvent;
            };
        }] call CBA_fnc_waitUntilAndExecute;
    };

    addMissionEventHandler ["Ended", {
        params ["_endType"];
        [] call FUNC(shotDisplay);
    }];
};
