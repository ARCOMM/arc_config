PREP(addEH);
PREP(getDisplayName);
PREP(shotCount);
PREP(shotDisplay);
PREP(shotHit);

if (isServer) then {
    GVAR(expendedAmmunitionWest) = ["Total", 0];
    GVAR(expendedAmmunitionEast) = ["Total", 0];
    GVAR(expendedAmmunitionResistance) = ["Total", 0];

    [QGVAR(event_addEH), FUNC(addEH)] call CBA_fnc_addEventHandler;
};

if (hasInterface) then {
    GVAR(playerExpendedAmmunition) = ["Total", 0];
    GVAR(playerHits) = ["Hits", 0];

    ["All", "fired",
        {
            params ["", "", "", "", "", "_magazine", "", "_gunner"];
            if (_gunner == ace_player) then {
                GVAR(playerExpendedAmmunition) set [1, (GVAR(playerExpendedAmmunition) select 1) + 1 ];
                private _magazineName = _magazine call FUNC(getDisplayName);
                private _found = GVAR(playerExpendedAmmunition) find _magazineName;

                if (_found < 0) then {
                    GVAR(playerExpendedAmmunition) pushBack _magazineName;
                    GVAR(playerExpendedAmmunition) pushBack 1;
                } else {
                    GVAR(playerExpendedAmmunition) set [_found + 1, (GVAR(playerExpendedAmmunition) select _found + 1) + 1];
                };
            };
        },
        true,
        [],
        true
    ] call CBA_fnc_addClassEventHandler;

    {
        [_x, "HitPart",
            {
                {
                    _x call FUNC(shotHit);
                } forEach _this;
            },
            true,
            [],
            true
        ] call CBA_fnc_addClassEventHandler;
    } forEach ["Land", "Air", "Ship"];
};
