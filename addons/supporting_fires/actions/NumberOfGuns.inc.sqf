
    // ===== Add Number of Guns Selection
    _statementGuns = {
        [["Select the number of guns to fire, "], [format ["%1 out of %2 currently selected.", GVAR(numberOfGuns), GVAR(batterySize)]], true] call CBA_fnc_notify;
    };
    _actionGuns = ["Number of Guns", "Number of Guns", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementGuns, _conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionGuns] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionGuns] call ace_interact_menu_fnc_addActionToZeus;
    };

        // 1 Gun
        _conditionGuns1 = {true};
        _statementGuns1 = {
            [["1 gun selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 1;
        };
        _actionGuns1 = ["1 Gun", "1 Gun", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns1, _conditionGuns1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns1] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns1] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 2 Guns
        _conditionGuns2 = {GVAR(batterySize) > 1};
        _statementGuns2 = {
            [["2 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 2;
        };
        _actionGuns2 = ["2 Guns", "2 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns2, _conditionGuns2] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns2] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns2] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 3 Guns
        _conditionGuns3 = {GVAR(batterySize) > 2};
        _statementGuns3 = {
            [["3 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 3;
        };
        _actionGuns3 = ["3 Guns", "3 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns3, _conditionGuns3] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns3] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns3] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 4 Guns
        _conditionGuns4 = {GVAR(batterySize) > 3};
        _statementGuns4 = {
            [["4 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 4;
        };
        _actionGuns4 = ["4 Guns", "4 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns4, _conditionGuns4] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns4] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns4] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 5 Guns
        _conditionGuns5 = {GVAR(batterySize) > 4};
        _statementGuns5 = {
            [["5 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 5;
        };
        _actionGuns5 = ["5 Guns", "5 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns5, _conditionGuns5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns5] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns5] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 10 Guns
        _conditionGuns10 = {GVAR(batterySize) > 9};
        _statementGuns10 = {
            [["10 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 10;
        };
        _actionGuns10 = ["10 Guns", "10 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns10, _conditionGuns10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns10] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns10] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 15 Guns
        _conditionGuns15 = {GVAR(batterySize) > 14};
        _statementGuns15 = {
            [["15 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 15;
        };
        _actionGuns15 = ["15 Guns", "15 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns15, _conditionGuns15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns15] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns15] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 20 Guns
        _conditionGuns20 = {GVAR(batterySize) > 19};
        _statementGuns20 = {
            [["20 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 20;
        };
        _actionGuns20 = ["20 Guns", "20 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns20, _conditionGuns20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns20] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns20] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 25 Guns
        _conditionGuns25 = {GVAR(batterySize) > 24};
        _statementGuns25 = {
            [["25 guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = 25;
        };
        _actionGuns25 = ["25 Guns", "25 Guns", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGuns25, _conditionGuns25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGuns25] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGuns25] call ace_interact_menu_fnc_addActionToZeus;
        };

        // All Guns
        _conditionGunsAll = {true};
        _statementGunsAll = {
            [["All guns selected."], true] call CBA_fnc_notify;
            GVAR(numberOfGuns) = GVAR(batterySize);
        };
        _actionGunsAll = ["All Gun", "All Gun", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementGunsAll, _conditionGunsAll] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Number of Guns"], _actionGunsAll] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Number of Guns"], _actionGunsAll] call ace_interact_menu_fnc_addActionToZeus;
        };

