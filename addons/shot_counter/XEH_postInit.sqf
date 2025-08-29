#include "script_component.hpp"

if (isServer) then {
    ["All", "init", {
        if !((_this select 0) getVariable ["added_shotCount",false]) then {
            ["aCount_event_addEH", (_this select 0)] call CBA_fnc_serverEvent;
            (_this select 0) setVariable ["added_shotCount",true];
        };
    }] call CBA_fnc_addClassEventHandler;

    [{ CBA_missionTime > 0 }, {
        {
            if !(_x getVariable ["added_shotCount",false]) then {
                _x setVariable ["added_shotCount",true];
                _x call aCount_addEH;
            };
        } forEach allMissionObjects "All";
    }] call CBA_fnc_waitUntilAndExecute;
};

if (hasInterface) then {
    if (didJIP) then {
        [{!isNull player}, {
            if !(player getVariable ["added_shotCount",false]) then {
                player setVariable ["added_shotCount",true];
                ["aCount_event_addEH", player] call CBA_fnc_serverEvent;
            };
        }] call CBA_fnc_waitUntilAndExecute;
    };
};
