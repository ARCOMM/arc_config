PREP(addEH);
PREP(endCount);
PREP(getDisplayName);
PREP(shotCount);
PREP(shotDisplay);

if (isServer) then {
    aCount_west_ExpendedAmmunition = ["Total",0];
    aCount_resistance_ExpendedAmmunition = ["Total",0];
    aCount_east_ExpendedAmmunition = ["Total",0];

    ["aCount_event_addEH",aCount_addEH] call CBA_fnc_addEventHandler;
};

if (hasInterface) then {
    aCount_player_ExpendedAmmunition = ["Total",0];

    ["All", "fired",
        {
            params ["", "", "", "", "", "_magazine", "", "_gunner"];
            if (_gunner == ace_player) then {
                aCount_player_ExpendedAmmunition set [1,(aCount_player_ExpendedAmmunition select 1) + 1 ];
                private _magazineName = _magazine call aCount_getDisplayName;
                private _found = aCount_player_ExpendedAmmunition find _magazineName;

                if (_found < 0) then {
                    aCount_player_ExpendedAmmunition pushBack _magazineName ;
                    aCount_player_ExpendedAmmunition pushBack 1;
                } else {
                    aCount_player_ExpendedAmmunition set [_found + 1,(aCount_player_ExpendedAmmunition select _found + 1) + 1 ];
                };
            };
        },
        true,
        [],
        true
    ] call CBA_fnc_addClassEventHandler;

    ["aCount_event_scoreScreen",aCount_shotDisplay] call CBA_fnc_addEventHandler;
};
