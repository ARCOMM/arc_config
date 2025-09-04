
    // ===== Add Volume of Fire Selection
    private _statementVolume = {
        [["Select the number of rounds to fire, "], [format ["%1 currently selected.", GVAR(volumeOfFire)]], true] call CBA_fnc_notify;
    };
    private _actionVolume = ["Volume of Fire", "Volume of Fire", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementVolume, _conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionVolume] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionVolume] call ace_interact_menu_fnc_addActionToZeus;
    };

        // 1 Round, HE
        private _conditionVolumeHE1 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE1 = {
            [["1 round HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 1;
        };
        private _actionVolumeHE1 = ["HE - 1 Round", "1 Round", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE1, _conditionVolumeHE1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE1] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE1] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 5 Rounds, HE
        private _conditionVolumeHE5 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 4}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 4}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 4}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE5 = {
            [["5 rounds HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 5;
        };
        private _actionVolumeHE5 = ["HE - 5 Rounds", "5 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE5, _conditionVolumeHE5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE5] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE5] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 10 Rounds, HE
        private _conditionVolumeHE10 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 9}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 9}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 9}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE10 = {
            [["10 rounds HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 10;
        };
        private _actionVolumeHE10 = ["HE - 10 Rounds", "10 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE10, _conditionVolumeHE10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE10] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE10] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 15 Rounds, HE
        private _conditionVolumeHE15 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 14}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 14}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 14}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE15 = {
            [["15 rounds HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 15;
        };
        private _actionVolumeHE15 = ["HE - 15 Rounds", "15 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE15, _conditionVolumeHE15] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE15] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE15] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 20 Rounds, HE
        private _conditionVolumeHE20 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 19}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 19}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 19}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE20 = {
            [["20 rounds HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 20;
        };
        private _actionVolumeHE20 = ["HE - 20 Rounds", "20 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE20, _conditionVolumeHE20] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE20] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE20] call ace_interact_menu_fnc_addActionToZeus;
        };

        // 25 Rounds, HE
        private _conditionVolumeHE25 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountWest) > 24}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountEast) > 24}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "HE"} && {GVAR(shellsHE_AmmoCountGuer) > 24}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "HE"}}
        };
        private _statementVolumeHE25 = {
            [["25 rounds HE selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 25;
        };
        private _actionVolumeHE25 = ["HE - 25 Rounds", "25 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_he.paa", _statementVolumeHE25, _conditionVolumeHE25] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE25] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeHE25] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Target 01, 1 Round, Smoke
        private _conditionVolumeSmoke1 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "Smoke"}}
        };
        private _statementVolumeSmoke1 = {
            [["1 round smoke selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 1;
        };
        private _actionVolumeSmoke1 = ["Smoke - 1 Round", "1 Round", "modules\supporting_fires\icons\icon_supporting_fires_smoke.paa", _statementVolumeSmoke1, _conditionVolumeSmoke1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke1] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke1] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Target 01, 5 Rounds, Smoke
        private _conditionVolumeSmoke5 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountWest) > 4}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountEast) > 4}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountGuer) > 4}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "Smoke"}}
        };
        private _statementVolumeSmoke5 = {
            [["5 rounds smoke selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 5;
        };
        private _actionVolumeSmoke5 = ["Smoke - 5 Rounds", "5 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_smoke.paa", _statementVolumeSmoke5, _conditionVolumeSmoke5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke5] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke5] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Target 01, 10 Rounds, Smoke
        private _conditionVolumeSmoke10 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountWest) > 9}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountEast) > 9}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "Smoke"} && {GVAR(shellsSmoke_AmmoCountGuer) > 9}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "Smoke"}}
        };
        private _statementVolumeSmoke10 = {
            [["10 rounds smoke selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 10;
        };
        private _actionVolumeSmoke10 = ["Smoke - 10 Rounds", "10 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_smoke.paa", _statementVolumeSmoke10, _conditionVolumeSmoke10] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke10] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeSmoke10] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Target 01, 1 Round, Flare
        private _conditionVolumeFlare1 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountWest) > 0}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountEast) > 0}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountGuer) > 0}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "Flare"}}
        };
        private _statementVolumeFlare1 = {
            [["1 round flare selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 1;
        };
        private _actionVolumeFlare1 = ["Flare - 1 Round", "1 Round", "modules\supporting_fires\icons\icon_supporting_fires_flare.paa", _statementVolumeFlare1, _conditionVolumeFlare1] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeFlare1] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeFlare1] call ace_interact_menu_fnc_addActionToZeus;
        };

        // Target 01, 5 Rounds, Flare
        private _conditionVolumeFlare5 = {
                GVAR(isWest) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountWest) > 4}
            || {GVAR(isEast) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountEast) > 4}}
            || {GVAR(isGuer) && {GVAR(ammoType) isEqualTo "Flare"} && {GVAR(shellsFlare_AmmoCountGuer) > 4}}
            || {GVAR(isZEUS) && {GVAR(ammoType) isEqualTo "Flare"}}
        };
        private _statementVolumeFlare5 = {
            [["5 rounds flare selected."], true] call CBA_fnc_notify;
            GVAR(volumeOfFire) = 5;
        };
        private _actionVolumeFlare5 = ["Flare - 5 Rounds", "5 Rounds", "modules\supporting_fires\icons\icon_supporting_fires_flare.paa", _statementVolumeFlare5, _conditionVolumeFlare5] call ace_interact_menu_fnc_createAction;
        [player, 1, ["ACE_SelfActions", "Supporting Fires", "Volume of Fire"], _actionVolumeFlare5] call ace_interact_menu_fnc_addActionToObject;
        if (GVAR(isZEUS)) then {
            [["ACE_ZeusActions", "Supporting Fires", "Volume of Fire"], _actionVolumeFlare5] call ace_interact_menu_fnc_addActionToZeus;
        };
