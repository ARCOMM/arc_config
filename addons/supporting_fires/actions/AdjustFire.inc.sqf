
    // ===== Add Adjust Fire from Last Target
    private _conditionAdjust = {
            GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {"TargetLast" == GVAR(targetType)}
        || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {"TargetLast" == GVAR(targetType)}}
        || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {"TargetLast" == GVAR(targetType)}}
    };
    private _statementAdjust = {
        if (GVAR(adjustmentCoords) isEqualTo [0, 0]) then {
            [["Select the direction and distance to adjust fire, "], ["No adjustment currently requested."], true] call CBA_fnc_notify;
        } else {
            [["Select the direction and distance to adjust fire, "], [format ["Current adjustment is %1.", GVAR(adjustmentDirection)]], true] call CBA_fnc_notify;
        };
    };
    private _actionAdjust = ["Adjust Fire", "Adjust Fire", "modules\supporting_fires\icons\icon_supporting_fires_adjust.paa", _statementAdjust, _conditionAdjust] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionAdjust] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionAdjust] call ace_interact_menu_fnc_addActionToZeus;
    };

        //No Adjustment
        private _conditionAdjustNone = {(GVAR(adjustmentCoords) isNotEqualTo [0, 0])};
        private _statementAdjustNone = {
            GVAR(targetType) = "TargetLast";
            GVAR(adjustmentCoords) = [0, 0];
            GVAR(adjustmentDirection) = "with no adjustment";
            [["No fire adjustment will be made"], true] call CBA_fnc_notify;
        };
        private _actionAdjustNone = ["Remove Adjustment Direction", "Remove Adjustment Direction", "modules\supporting_fires\icons\icon_supporting_fires_adjust.paa", _statementAdjustNone, _conditionAdjustNone] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjustNone] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjustNone] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Adjust Fire North
        private _actionAdjust_N = ["Adjust North", "Adjust North", "modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_N] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_N] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50N = {
                GVAR(adjustmentCoords) = [0, 50];
                GVAR(adjustmentDirection) = "adjust fire north 50m";
                [["Adjust fire 50m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50N = ["Adjust North 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa", _statementAdjust_50N, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust North"], _actionAdjust_50N] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust North"], _actionAdjust_50N] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100N = {
                GVAR(adjustmentCoords) = [0, 100];
                GVAR(adjustmentDirection) = "adjust fire north 100m";
                [["Adjust fire 100m north.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100N = ["Adjust North 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustN.paa", _statementAdjust_100N, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust North"], _actionAdjust_100N] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust North"], _actionAdjust_100N] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire Northeast
        private _actionAdjust_NE = ["Adjust Northeast", "Adjust Northeast", "modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_NE] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_NE] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50NE = {
                GVAR(adjustmentCoords) = [35.4, 35.4];
                GVAR(adjustmentDirection) = "adjust fire northeast 50m";
                [["Adjust fire 50m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50NE = ["Adjust Northeast 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa", _statementAdjust_50NE, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Northeast"], _actionAdjust_50NE] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Northeast"], _actionAdjust_50NE] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100NE = {
                GVAR(adjustmentCoords) = [70.7, 70.7];
                GVAR(adjustmentDirection) = "adjust fire northeast 100m";
                [["Adjust fire 100m northeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100NE = ["Adjust Northeast 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustNE.paa", _statementAdjust_100NE, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Northeast"], _actionAdjust_100NE] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Northeast"], _actionAdjust_100NE] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire East
        private _actionAdjust_E = ["Adjust East", "Adjust East", "modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_E] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_E] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50E = {
                GVAR(adjustmentCoords) = [50, 0];
                GVAR(adjustmentDirection) = "adjust fire east 50m";
                [["Adjust fire 50m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50E = ["Adjust East 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa", _statementAdjust_50E, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust East"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust East"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100E = {
                GVAR(adjustmentCoords) = [100, 0];
                GVAR(adjustmentDirection) = "adjust fire east 100m";
                [["Adjust fire 100m east.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100E = ["Adjust East 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustE.paa", _statementAdjust_100E, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust East"], _actionAdjust_100E] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust East"], _actionAdjust_100E] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire Southeast
        private _actionAdjust_SE = ["Adjust Southeast", "Adjust Southeast", "modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_SE] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_SE] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50SE = {
                GVAR(adjustmentCoords) = [35.4, -35.4];
                GVAR(adjustmentDirection) = "adjust fire southeast 50m";
                [["Adjust fire 50m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50E = ["Adjust Southeast 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa", _statementAdjust_50SE, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Southeast"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Southeast"], _actionAdjust_50E] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100SE = {
                GVAR(adjustmentCoords) = [70.7, -70.7];
                GVAR(adjustmentDirection) = "adjust fire southeast 100m";
                [["Adjust fire 100m southeast.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100SE = ["Adjust Southeast 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustSE.paa", _statementAdjust_100SE, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Southeast"], _actionAdjust_100SE] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Southeast"], _actionAdjust_100SE] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire South
        private _actionAdjust_S = ["Adjust South", "Adjust South", "modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_S] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_S] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50S = {
                GVAR(adjustmentCoords) = [0, -50];
                GVAR(adjustmentDirection) = "adjust fire south 50m";
                [["Adjust fire 50m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50S = ["Adjust South 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa", _statementAdjust_50S, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust South"], _actionAdjust_50S] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust South"], _actionAdjust_50S] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100S = {
                GVAR(adjustmentCoords) = [0, -100];
                GVAR(adjustmentDirection) = "adjust fire south 100m";
                [["Adjust fire 100m south.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100S = ["Adjust South 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustS.paa", _statementAdjust_100S, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust South"], _actionAdjust_100S] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust South"], _actionAdjust_100S] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire Southwest
        private _actionAdjust_SW = ["Adjust Southwest", "Adjust Southwest", "modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_SW] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_SW] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50SW = {
                GVAR(adjustmentCoords) = [-35.4, -35.4];
                GVAR(adjustmentDirection) = "adjust fire southwest 50m";
                [["Adjust fire 50m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50SW = ["Adjust Southwest 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa", _statementAdjust_50SW, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Southwest"], _actionAdjust_50SW] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Southwest"], _actionAdjust_50SW] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100SW = {
                GVAR(adjustmentCoords) = [-70.7, -70.7];
                GVAR(adjustmentDirection) = "adjust fire southwest 100m";
                [["Adjust fire 100m southwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100SW = ["Adjust Southwest 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustSW.paa", _statementAdjust_100SW, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Southwest"], _actionAdjust_100SW] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Southwest"], _actionAdjust_100SW] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire West
        private _actionAdjust_W = ["Adjust West", "Adjust West", "modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_W] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_W] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50W = {
                GVAR(adjustmentCoords) = [-50, 0];
                GVAR(adjustmentDirection) = "adjust fire West 50m";
                [["Adjust fire 50m West.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50W = ["Adjust West 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa", _statementAdjust_50W, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust West"], _actionAdjust_50W] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust West"], _actionAdjust_50W] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100W = {
                GVAR(adjustmentCoords) = [-100, 0];
                GVAR(adjustmentDirection) = "adjust fire West 100m";
                [["Adjust fire 100m West.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100W = ["Adjust West 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustW.paa", _statementAdjust_100W, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust West"], _actionAdjust_100W] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust West"], _actionAdjust_100W] call ace_interact_menu_fnc_addActionToZeus;
            };

        // Adjust Fire Northwest
        private _actionAdjust_NW = ["Adjust Northwest", "Adjust Northwest", "modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa", _statementAdjust, {true}] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_NW] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire"], _actionAdjust_NW] call ace_interact_menu_fnc_addActionToZeus;
        };

            private _statementAdjust_50NW = {
                GVAR(adjustmentCoords) = [-35.4, 35.4];
                GVAR(adjustmentDirection) = "adjust fire northwest 50m";
                [["Adjust fire 50m northwest.<br/>Select the type of ammunition to use"], true] call CBA_fnc_notify;
            };
            private _actionAdjust_50NW = ["Adjust Northwest 50", "50m", "modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa", _statementAdjust_50NW, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Northwest"], _actionAdjust_50NW] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Northwest"], _actionAdjust_50NW] call ace_interact_menu_fnc_addActionToZeus;
            };

            private _statementAdjust_100NW = {
                GVAR(adjustmentCoords) = [-70.7, 70.7];
                GVAR(adjustmentDirection) = "adjust fire northwest 100m";
                [["Adjust fire 100m northwest.<br/>Select the type of ammunition to use."], true] call CBA_fnc_notify;
            };
            private _actionAdjust_100NW = ["Adjust Northwest 100", "100m", "modules\supporting_fires\icons\icon_supporting_fires_adjustNW.paa", _statementAdjust_100NW, {true}] call ace_interact_menu_fnc_createAction;
            [player, 1, ["ACE_SelfActions", "Supporting Fires", "Adjust Fire", "Adjust Northwest"], _actionAdjust_100NW] call ace_interact_menu_fnc_addActionToObject;
            if (GVAR(isZEUS)) then {
                [["ACE_ZeusActions", "Supporting Fires", "Adjust Fire", "Adjust Northwest"], _actionAdjust_100NW] call ace_interact_menu_fnc_addActionToZeus;
            };
