
// Start Actions
private _supportingFireActions = [] call {

    // Add conditions for interactions
    private _conditionFires = {GVAR(isZEUS) || {[] call acre_api_fnc_getCurrentRadio != ""}};

    private _conditionTargets = {
            GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsHE_AmmoCountWest) > 0 || GVAR(shellsSmoke_AmmoCountWest) > 0 || GVAR(shellsFlare_AmmoCountWest) > 0}
        || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsHE_AmmoCountEast) > 0 || GVAR(shellsSmoke_AmmoCountEast) > 0 || GVAR(shellsFlare_AmmoCountEast) > 0}}
        || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsHE_AmmoCountGuer) > 0 || GVAR(shellsSmoke_AmmoCountGuer) > 0 || GVAR(shellsFlare_AmmoCountGuer) > 0}}
        || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
    };

    private _conditionVisual = {
        (!visibleMap)
        && {
                GVAR(isWest) && {GVAR(fireMissionAvailableWest)}
            || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)}}
            || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}}
            || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
        }
    };

    private _conditionRepeat = {
        GVAR(previousTarget) isEqualTo GVAR(targetType)
        && {
                GVAR(isWest) && {GVAR(fireMissionAvailableWest)}
            || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)}}
            || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}}
            || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
        }
    };

    private _conditionCheck = {
            GVAR(isWest) && {GVAR(fireMissionAvailableWest)}
        || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)}}
        || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}}
        || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
    };

    private _conditionFiring = {
            GVAR(isWest) && {!GVAR(fireMissionAvailableWest)}
        || {GVAR(isEast) && {!GVAR(fireMissionAvailableEast)}}
        || {GVAR(isGuer) && {!GVAR(fireMissionAvailableGuer)}}
        || {GVAR(isZEUS) && {!GVAR(fireMissionAvailableZeus)}}
    };

    // ===== Add supporting fires interaction
    private _statementFires = {
        if (GVAR(isCiv) && {!GVAR(isZEUS)}) then {
            [["Return possession of this radio to the appropriate military authorities!"], true] call CBA_fnc_notify;
        } else {
            [["Select a target, type of ammunition, and number of rounds, then call the fire mission."], true] call CBA_fnc_notify;
        };
    };
    private _actionFires = ["Supporting Fires", "Supporting Fires", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementFires, _conditionFires] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions"], _actionFires] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions"], _actionFires] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add action to check remaining ammunition
    private _statementRounds = {[] call FUNC(ammoCheck)};
    private _actionRounds = ["Check Ammo Supply", "Check Ammo Supply", "modules\supporting_fires\icons\icon_supporting_fires_ammo.paa", _statementRounds, _conditionCheck] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionRounds] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add action to indicate fire mission is in progress.
    private _statementFiring = {[["Fire mission is already underway."], true] call CBA_fnc_notify;};
    private _actionFiring = ["Fire Mission In Progress", "Fire Mission In Progress", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementFiring, _conditionFiring] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionFiring] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add Targets
    #include "actions\Targets.inc.sqf"

    // ===== Add Adjust Fire from Last Target
    #include "actions\AdjustFire.inc.sqf"

    // ===== Add Ammo Type
    #include "actions\AmmoType.inc.sqf"

    // ===== Add Ammunition Volume
    #include "actions\VolumeOfFire.inc.sqf"

    // ===== Add Number of Guns
    #include "actions\NumberOfGuns.inc.sqf"

    // ===== Add Fire Mission Safety
    private _statementSafety = {
        [["Select 'Confirm' to call the fire mission."], true] call CBA_fnc_notify
    };
    private _actionSafety = ["Call for Fire", "Call for Fire", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementSafety, _conditionTargets] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires"], _actionSafety] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires"], _actionSafety] call ace_interact_menu_fnc_addActionToZeus;
    };

    // ===== Add Fire Mission
    private _statementFireMission = {
        [GVAR(ammoType), GVAR(targetType), GVAR(adjustmentCoords)] call FUNC(fireMission);
    };
    private _actionFireMission = ["Confirm!", "Confirm!", "modules\supporting_fires\icons\icon_supporting_fires.paa", _statementFireMission, {true}] call ace_interact_menu_fnc_createAction;
    [player, 1, ["ACE_SelfActions", "Supporting Fires", "Call for Fire"], _actionFireMission] call ace_interact_menu_fnc_addActionToObject;
    if (GVAR(isZEUS)) then {
        [["ACE_ZeusActions", "Supporting Fires", "Call for Fire"], _actionFireMission] call ace_interact_menu_fnc_addActionToZeus;
    };

};
// End Actions
