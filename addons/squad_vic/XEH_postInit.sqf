#include "script_component.hpp"

if (isNil QGVAR(enabled)) then {
    GVAR(enabled) = true;
};

if (!GVAR(enabled) || !hasInterface) exitWith {};

if (isNil "diwako_dui_special_track" || {!(diwako_dui_special_track isEqualType [])}) then {
    diwako_dui_special_track = [];
};

if (isNil QGVAR(list)) then {
    GVAR(list) = [];
} else {
    for "_i" from 0 to ((count GVAR(list)) - 1) do {
        private _entry = GVAR(list) select _i;
        if (count _entry % 2 != 0) exitWith {
            private _message = format ["Warning: Squad Vics list has bad entry at %1, it must be [SQUAD, VEHICLE], %2", _i, _entry];
            diag_log _message;
            systemChat _message;
        };

        private _squad = _entry select 0;
        if (group ace_player == _squad) exitWith {
            GVAR(currentVic) = _entry select 1;
            diwako_dui_special_track pushBackUnique GVAR(currentVic);
        };
    };
};

private _conditionSquadVicAdd = {GVAR(enabled) && {!(_target in diwako_dui_special_track)}};
private _statementSquadVicAdd = {
    if !(isNil QGVAR(currentVic)) then {
        private _currentVicIndex = diwako_dui_special_track find GVAR(currentVic);
        if (_currentVicIndex >= 0) exitWith {
            diwako_dui_special_track deleteAt _currentVicIndex;
        };
    };

    GVAR(currentVic) = _target ;
    diwako_dui_special_track pushBackUnique _target ;
};
private _actionSquadVicAdd = ["Set as Squad Vehicle", "Set as Squad Vehicle", "", _statementSquadVicAdd, _conditionSquadVicAdd] call ace_interact_menu_fnc_createAction;
{
    [_x, 0, ["ACE_MainActions"], _actionSquadVicAdd, true] call ace_interact_menu_fnc_addActionToClass;
    [_x, 1, ["ACE_SelfActions"], _actionSquadVicAdd, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ["LandVehicle", "Air", "Ship"];

private _conditionSquadVicRemove = {GVAR(enabled) && {!(isNil QGVAR(currentVic))} && {_target == GVAR(currentVic)}};
private _statementSquadVicRemove = {
    private _currentVicIndex = diwako_dui_special_track find GVAR(currentVic) ;
    if (_currentVicIndex >= 0) exitWith {
        diwako_dui_special_track deleteAt _currentVicIndex;
        GVAR(currentVic) = nil;
    };
};
private _actionSquadVicRemove = ["Remove as Squad Vehicle", "Remove as Squad Vehicle", "", _statementSquadVicRemove, _conditionSquadVicRemove] call ace_interact_menu_fnc_createAction;
{
    [_x, 0, ["ACE_MainActions"], _actionSquadVicRemove, true] call ace_interact_menu_fnc_addActionToClass;
    [_x, 1, ["ACE_SelfActions"], _actionSquadVicRemove, true] call ace_interact_menu_fnc_addActionToClass;
} forEach ["LandVehicle", "Air", "Ship"];
