
    // ===== Add Target Base Action
    private _statementTargetsMain = {
        [["Select a target, "], [format ["Current target is %1.", (GVAR(targetType) call FUNC(getTargetName))]], true] call CBA_fnc_notify;
    };
    private _actionTargetsMain = ["Select Target", "Select Target", "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTargetsMain, _conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionTargetsMain] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionTargetsMain] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add Targets
    if (GVAR(target01) != "") then {
        private _statementTarget01 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target01_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target01";
        };
        private _actionTarget01 = [GVAR(target01_Name), GVAR(target01_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget01, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget01] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (GVAR(target02) != "") then {
        private _statementTarget02 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target02_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target02";
        };
        private _actionTarget02 = [GVAR(target02_Name), GVAR(target02_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget02, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget02] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget02] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (GVAR(target03) != "") then {
        private _statementTarget03 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target03_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target03";
        };
        private _actionTarget03 = [GVAR(target03_Name), GVAR(target03_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget03, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget03] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget03] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (GVAR(target04) != "") then {
        private _statementTarget04 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target04_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target04";
        };
        private _actionTarget04 = [GVAR(target04_Name), GVAR(target04_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget04, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget04] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget04] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (GVAR(target05) != "") then {
        private _statementTarget05 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target05_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target05";
        };
        private _actionTarget05 = [GVAR(target05_Name), GVAR(target05_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget05, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget05] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget05] call ace_interact_menu_fnc_addActionToZeus;
        };
    };
    if (GVAR(target06) != "") then {
        private _statementTarget06 = {
            [[(format ["Selected target is %1.<br/>Select the type of ammunition to use.", GVAR(target06_Name)])], true] call CBA_fnc_notify;
            GVAR(targetType) = "Target06";
        };
        private _actionTarget06 = [GVAR(target06_Name), GVAR(target06_Name), "modules\supporting_fires\icons\icon_supporting_fires_target.paa", _statementTarget06, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionTarget06] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionTarget06] call ace_interact_menu_fnc_addActionToZeus;
        };
    };

    private _statementGrid = {createDialog "Supporting_Fires_Dialog";};
    private _actionGrid = ["Grid", "Grid", "modules\supporting_fires\icons\icon_supporting_fires_target_grid.paa", _statementGrid, {true}] call ace_interact_menu_fnc_createAction; //TODO change to grid paa
    [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionGrid] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionGrid] call ace_interact_menu_fnc_addActionToZeus;
    };

    private _statementVisualLoc = {

        /* //This isn't quite working right, revisit later
        private _terrainPosition = screenToWorld [0.5, 0.5];
        private _targetObject = lineIntersectsObjs [(eyePos player), _terrainPosition, objNull, objNull, true, 2];
        private _cancelled = false;

        if (_targetObject isEqualTo []) then {
            private _targetDistance = player distance2D _terrainPosition;
            if (_targetDistance < (0.75 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
                [["Negative, target is too close to your position.<br/>Check your grid."]] call CBA_fnc_notify;
               _cancelled = true;
            } else {
                if (_targetDistance < (1.5 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
                    [["Warning, target is danger close to your position."]] call CBA_fnc_notify;
                };
                supportFire_TargetVisualLocation = _terrainPosition;
            };
        } else {
            private _targetPosition = getPosATL (_targetObject select 0);
            private _targetDistance = player distance2D _targetPosition;
            if (_targetDistance < (0.75 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
                [["Negative, target is too close yo your position.<br/>Check your grid."]] call CBA_fnc_notify;
               _cancelled = true;
            } else {
                if (_targetDistance < (1.5 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
                    [["Warning, target is danger close to your position."]] call CBA_fnc_notify;
                };
                supportFire_TargetVisualLocation = _targetPosition;
            };
        };
        */

        private _terrainPosition = screenToWorld [0.5, 0.5];
        private _cancelled = false;
        private _targetDistance = player distance2D _terrainPosition;
        if (_targetDistance < (0.75 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
            [["Negative, target is too close to your position.<br/>Check your target."]] call CBA_fnc_notify;
           _cancelled = true;
        } else {
            if (_targetDistance < (1.5 * (GVAR(originalShellDispersion) + GVAR(originalShellAccuracy)))) then {
                [["Warning, target is danger close to your position."]] call CBA_fnc_notify;
            };
            supportFire_TargetVisualLocation = _terrainPosition;
        };
        if (_cancelled) exitWith {
            // systemChat "Fire mission canceled";
        };

        [["Target is your mark."], true] call CBA_fnc_notify;

        GVAR(targetType) = "TargetVisual";
    };
    private _actionVisualLoc = ["Visual Location", "Visual Location", "modules\supporting_fires\icons\icon_supporting_fires_target_vis.paa", _statementVisualLoc, _conditionVisual] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionVisualLoc] call ace_interact_menu_fnc_addActionToZeus;
    };

    private _statementRepeat = {
        [[(format ["Target %1 will be repeated.<br/>Select adjustment if required, and the type of ammunition to use.", GVAR(previousTarget)Name])], true] call CBA_fnc_notify;
        GVAR(targetType) = "TargetLast";
        supportFire_firstRepeat = true;
    };
    private _actionRepeat = ["Repeat Last Target", "Repeat Last Target", "modules\supporting_fires\icons\icon_supporting_fires_target_rep.paa", _statementRepeat, _conditionRepeat] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires", "Select Target"], _actionRepeat] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires", "Select Target"], _actionRepeat] call ace_interact_menu_fnc_addActionToZeus;
    };
