// aCount_shotCount
// FUNC(shotCount)

params ["_side", "_magazineName"];

switch (_side) do {
    case west: {
        aCount_west_ExpendedAmmunition set [1,(aCount_west_ExpendedAmmunition select 1) + 1 ];
        private _found = aCount_west_ExpendedAmmunition find _magazineName;

        if (_found < 0) then {
            aCount_west_ExpendedAmmunition pushBack _magazineName ;
            aCount_west_ExpendedAmmunition pushBack 1;
        } else {
            aCount_west_ExpendedAmmunition set [_found + 1,(aCount_west_ExpendedAmmunition select _found + 1) + 1 ];
        };
    };

    case east: {
        aCount_east_ExpendedAmmunition set [1,(aCount_east_ExpendedAmmunition select 1) + 1 ];
        private _found = aCount_east_ExpendedAmmunition find _magazineName;

        if (_found < 0) then {
            aCount_east_ExpendedAmmunition pushBack  _magazineName;
            aCount_east_ExpendedAmmunition pushBack 1;
        } else {
            aCount_east_ExpendedAmmunition set [_found + 1,(aCount_east_ExpendedAmmunition select _found + 1) + 1 ];
        };
    };

    case resistance: {
        aCount_resistance_ExpendedAmmunition set [1,(aCount_resistance_ExpendedAmmunition select 1) + 1 ];
        private _found = aCount_resistance_ExpendedAmmunition find _magazineName;

        if (_found < 0) then {
            aCount_resistance_ExpendedAmmunition pushBack  _magazineName;
            aCount_resistance_ExpendedAmmunition pushBack 1;
        } else {
            aCount_resistance_ExpendedAmmunition set [_found + 1,(aCount_resistance_ExpendedAmmunition select _found + 1) + 1 ];
        };
    };
};
