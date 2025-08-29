// aCount_shotDisplay
// FUNC(shotDisplay)

_this spawn {

    // Do player's personal ammo count
    aCount_textPlayer = format ["%1 - Munitions Expended:<br/>", name player];

    if ((aCount_player_ExpendedAmmunition select 1) > 0) then {
        for [{ _i = 0}, {_i < count aCount_player_ExpendedAmmunition}, {_i = _i + 2}] do {
            _label = aCount_player_ExpendedAmmunition select (_i);
            _count = aCount_player_ExpendedAmmunition select (_i + 1);
            aCount_textPlayer = format ["%1%2: %3 Rounds<br/>",aCount_textPlayer,_label,str _count];
        };
    } else {
        aCount_textPlayer = "";
    };

    // Do ammo count for each team
    _arrayBLU = param [0];
    _arrayRED = param [1];
    _arrayRES = param [2];
    aCount_textBLU = "BLUFOR Munitions Expended:<br/>";
    aCount_textRED = "OPFOR Munitions Expended:<br/>";
    aCount_textRES = "INDEPENDENT Munitions Expended:<br/>";

    // Get the custom names of each side's team and use them instead of generic names above ^
    _numberOfTeams = count FW_Teams;
    if (_numberOfTeams > 0) then {
        aCount_Side0 = FW_Teams select 0;
        aCount_Side0_Side = aCount_Side0 select 1;
        aCount_Side0_Name = aCount_Side0 select 0;

        if (aCount_Side0_Side == west) then {
            aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
        } else {
            if (aCount_Side0_Side == east) then {
                aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
            } else {
                if (aCount_Side0_Side == resistance) then {
                    aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side0_Name];
                };
            };
        };
    };

    if (_numberOfTeams > 1) then {
        aCount_Side1 = FW_Teams select 1;
        aCount_Side1_Side = aCount_Side1 select 1;
        aCount_Side1_Name = aCount_Side1 select 0;

        if (aCount_Side1_Side == west) then {
            aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
        } else {
            if (aCount_Side1_Side == east) then {
                aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
            } else {
                if (aCount_Side1_Side == resistance) then {
                    aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side1_Name];
                };
            };
        };
    };

    if (_numberOfTeams > 2) then {
        aCount_Side2 = FW_Teams select 2;
        aCount_Side2_Side = aCount_Side2 select 1;
        aCount_Side2_Name = aCount_Side2 select 0;

        if (aCount_Side2_Side == west) then {
            aCount_textBLU = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
        } else {
            if (aCount_Side2_Side == east) then {
                aCount_textRED = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
            } else {
                if (aCount_Side2_Side == resistance) then {
                    aCount_textRES = format ["%1 - Munitions Expended:<br/>", aCount_Side2_Name];
                };
            };
        };
    };

    // Build each side's total ammunition count.
    if ((_arrayBLU select 1) > 0) then {
        for [{ _i = 0}, {_i < count _arrayBLU}, {_i = _i + 2}] do {
            _label = _arrayBLU select (_i);
            _count = _arrayBLU select (_i + 1);
            aCount_textBLU = format ["%1%2: %3 Rounds<br/>",aCount_textBLU,_label,str _count];
        };
    } else {
        aCount_textBLU = "";
    };

    if ((_arrayRED select 1) > 0) then {
        for [{ _i = 0}, {_i < count _arrayRED}, {_i = _i + 2}] do {
            _label = _arrayRED select (_i);
            _count = _arrayRED select (_i + 1);
            aCount_textRED = format ["%1%2: %3 Rounds<br/>",aCount_textRED,_label,str _count];
        };
    } else {
        aCount_textRED = "";
    };

    if ((_arrayRES select 1) > 0) then {
        for [{ _i = 0}, {_i < count _arrayRES}, {_i = _i + 2}] do {
            _label = _arrayRES select (_i);
            _count = _arrayRES select (_i + 1);
            aCount_textRES = format ["%1%2: %3 Rounds<br/>",aCount_textRES,_label,str _count];
        };
    } else {
        aCount_textRES = "";
    };

    aCount_textTeams = format ["%1<br/><br/>%2<br/><br/>%3",aCount_textBLU,aCount_textRED,aCount_textRES];
};
