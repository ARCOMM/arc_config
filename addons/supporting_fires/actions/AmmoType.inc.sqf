
    // ===== Add Ammunition Type Selection
    private _statementAmmoType = {
        [["Select the type of ammunition to fire, "], [format ["%1 currently selected.", GVAR(ammoType)]], true] call CBA_fnc_notify;
    };
    private _actionTarget01 = ["Ammunition Type", "Ammunition Type", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementAmmoType, _conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionTarget01] call ace_interact_menu_fnc_addActionToZeus;
    };

        // HE
        private _conditionAmmoType_HE = {
                GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsHE_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsHE_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsHE_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
        };
        private _statementAmmoType_HE = {
            [["HE ammunition selected."], ["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            GVAR(ammoType) = "HE";
        };
        private _actionAmmoType_HE = ["HE", "HE", "modules\supporting_fires\icons\icon_supporting_fires_HE.paa", _statementAmmoType_HE, _conditionAmmoType_HE] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_HE] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_HE] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Smoke
        private _conditionAmmoType_Smoke = {
                GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsSmoke_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsSmoke_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsSmoke_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
        };
        private _statementAmmoType_Smoke = {
            [["Smoke ammunition selected."], ["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            GVAR(ammoType) = "Smoke";
        };
        private _actionAmmoType_Smoke = ["Smoke", "Smoke", "modules\supporting_fires\icons\icon_supporting_fires_Smoke.paa", _statementAmmoType_Smoke, _conditionAmmoType_Smoke] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_Smoke] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_Smoke] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Flare
        private _conditionAmmoType_Flare = {
                GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsFlare_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsFlare_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsFlare_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
        };
        private _statementAmmoType_Flare = {
            [["Flare ammunition selected."], ["Select the number of rounds to fire."], true] call CBA_fnc_notify;
            GVAR(ammoType) = "Flare";
        };
        private _actionAmmoType_Flare = ["Flare", "Flare", "modules\supporting_fires\icons\icon_supporting_fires_flare.paa", _statementAmmoType_Flare, _conditionAmmoType_Flare] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_Flare] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Ammunition Type"], _actionAmmoType_Flare] call ace_interact_menu_fnc_addActionToZeus;
        };
