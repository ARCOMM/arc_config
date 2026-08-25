class GVAR(main) {
    displayName = "Supporting Fires";
    condition = QUOTE([] call FUNC(ui_conditionFires));
    statement = QUOTE([] call FUNC(ui_statementFires));
    icon = QPATHTOF(icons\main.paa);
    exceptions[] = {};

    class GVAR(checkAmmoSupply) {
        displayName = "Check Ammo Supply";
        condition = QUOTE([] call FUNC(ui_conditionCheck));
        statement = QUOTE([] call FUNC(ammoCheck));
        icon = QPATHTOF(icons\ammo.paa);
        exceptions[] = {};
    };
    class GVAR(fireMissionInProgress) {
        displayName = "Fire Mission In Progress";
        condition = QUOTE([] call FUNC(ui_conditionFiring));
        statement = QUOTE([] call FUNC(ui_statementFireMissionInProgress));
        icon = QPATHTOF(icons\main.paa);
        exceptions[] = {};
    };
    class GVAR(selectTarget) {
        displayName = "Select Target";
        condition = QUOTE([] call FUNC(ui_conditionTargets));
        statement = QUOTE([] call FUNC(ui_statementTargetSelect));
        modifierFunction = QUOTE(_this select 3 call FUNC(ui_modifierTargetGrid));
        icon = QPATHTOF(icons\target.paa);
        exceptions[] = {};

        class GVAR(target01) {
            displayName = "Target 01";
            condition = QUOTE(GVAR(target01) != '');
            statement = QUOTE([QUOTE(QUOTE(Target01))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target01)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(target02) {
            displayName = "Target 02";
            condition = QUOTE(GVAR(target02) != '');
            statement = QUOTE([QUOTE(QUOTE(Target02))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target02)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(target03) {
            displayName = "Target 03";
            condition = QUOTE(GVAR(target03) != '');
            statement = QUOTE([QUOTE(QUOTE(Target03))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target03)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(target04) {
            displayName = "Target 04";
            condition = QUOTE(GVAR(target04) != '');
            statement = QUOTE([QUOTE(QUOTE(Target04))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target04)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(target05) {
            displayName = "Target 05";
            condition = QUOTE(GVAR(target05) != '');
            statement = QUOTE([QUOTE(QUOTE(Target05))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target05)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(target06) {
            displayName = "Target 06";
            condition = QUOTE(GVAR(target06) != '');
            statement = QUOTE([QUOTE(QUOTE(Target06))] call FUNC(ui_statementTargetSelectNumber));
            modifierFunction = QUOTE([ARR_2(_this select 3,QUOTE(QUOTE(Target06)))] call FUNC(ui_modifierTarget));
            icon = QPATHTOF(icons\target.paa);
            exceptions[] = {};
        };
        class GVAR(grid) {
            displayName = "Target Grid";
            condition = "true";
            statement = QUOTE([] call FUNC(ui_statementTargetSelectGrid));
            modifierFunction = QUOTE(_this select 3 call FUNC(ui_modifierTargetGrid));
            icon = QPATHTOF(icons\target_grid.paa);
            exceptions[] = {};
        };
        class GVAR(visualLocation) {
            displayName = "Visual Location";
            condition = QUOTE([] call FUNC(ui_conditionVisual));
            statement = QUOTE([] call FUNC(ui_statementTargetSelectVisual));
            icon = QPATHTOF(icons\target_visual.paa);
            exceptions[] = {};
        };
        class GVAR(repeatLastTarget) {
            displayName = "Repeat Last Target";
            condition = QUOTE([] call FUNC(ui_conditionRepeatTarget));
            statement = QUOTE([] call FUNC(ui_statementTargetSelectRepeat));
            icon = QPATHTOF(icons\target_repeat.paa);
            exceptions[] = {};
        };
    };
    class GVAR(adjustFire) {
        displayName = "Adjust Fire";
        condition = QUOTE([] call FUNC(ui_conditionAdjust));
        statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
        icon = QPATHTOF(icons\adjust.paa);
        exceptions[] = {};

        class GVAR(removeAdjustmentDirection) {
            displayName = "Remove Adjustment Direction";
            condition = QUOTE((GVAR(adjustmentCoords) isNotEqualTo [ARR_2(0,0)]));
            statement = QUOTE([ARR_2(0,0)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjust.paa);
            exceptions[] = {};
        };
        class GVAR(adjustNorth) {
            displayName = "Adjust North";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustN.paa);
            exceptions[] = {};

            class GVAR(adjustNorth50) {
                displayName = "Adjust North 50";
                condition = "true";
                statement = QUOTE([ARR_2(0,50)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustN.paa);
                exceptions[] = {};
            };
            class GVAR(adjustNorth100) {
                displayName = "Adjust North 100";
                condition = "true";
                statement = QUOTE([ARR_2(0,100)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustN.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustNortheast) {
            displayName = "Adjust Northeast";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustNE.paa);
            exceptions[] = {};

            class GVAR(adjustNorth50) {
                displayName = "Adjust Northeast 50";
                condition = "true";
                statement = QUOTE([ARR_2(35.4,35.4)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustNE.paa);
                exceptions[] = {};
            };
            class GVAR(adjustNorth100) {
                displayName = "Adjust Northeast 100";
                condition = "true";
                statement = QUOTE([ARR_2(70.7,70.7)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustNE.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustEast) {
            displayName = "Adjust East";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustE.paa);
            exceptions[] = {};

            class GVAR(adjustEast50) {
                displayName = "Adjust East 50";
                condition = "true";
                statement = QUOTE([ARR_2(50,0)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustE.paa);
                exceptions[] = {};
            };
            class GVAR(adjustEast100) {
                displayName = "Adjust East 100";
                condition = "true";
                statement = QUOTE([ARR_2(100,0)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustE.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustSoutheast) {
            displayName = "Adjust Southeast";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustSE.paa);
            exceptions[] = {};

            class GVAR(adjustSoutheast50) {
                displayName = "Adjust Southeast 50";
                condition = "true";
                statement = QUOTE([ARR_2(35.4,-35.4)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustSE.paa);
                exceptions[] = {};
            };
            class GVAR(adjustSoutheast100) {
                displayName = "Adjust Southeast 100";
                condition = "true";
                statement = QUOTE([ARR_2(70.7,-70.7)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustSE.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustSouth) {
            displayName = "Adjust South";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustS.paa);
            exceptions[] = {};

            class GVAR(adjustSouth50) {
                displayName = "Adjust South 50";
                condition = "true";
                statement = QUOTE([ARR_2(0,-50)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustS.paa);
                exceptions[] = {};
            };
            class GVAR(adjustSouth100) {
                displayName = "Adjust South 100";
                condition = "true";
                statement = QUOTE([ARR_2(0,-100)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustS.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustSouthwest) {
            displayName = "Adjust Southwest";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustSW.paa);
            exceptions[] = {};

            class GVAR(adjustSouthwest50) {
                displayName = "Adjust Southwest 50";
                condition = "true";
                statement = QUOTE([ARR_2(-35.4,-35.4)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustSW.paa);
                exceptions[] = {};
            };
            class GVAR(adjustSouthwest100) {
                displayName = "Adjust Southwest 100";
                condition = "true";
                statement = QUOTE([ARR_2(-70.7,-70.7)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustSW.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustWest) {
            displayName = "Adjust West";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustW.paa);
            exceptions[] = {};

            class GVAR(adjustWest50) {
                displayName = "Adjust West 50";
                condition = "true";
                statement = QUOTE([ARR_2(-50,0)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustW.paa);
                exceptions[] = {};
            };
            class GVAR(adjustWest100) {
                displayName = "Adjust West 100";
                condition = "true";
                statement = QUOTE([ARR_2(-100,0)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustW.paa);
                exceptions[] = {};
            };
        };
        class GVAR(adjustNorthwest) {
            displayName = "Adjust Northwest";
            condition = "true";
            statement = QUOTE([ARR_2(-1,-1)] call FUNC(ui_statementAdjust));
            icon = QPATHTOF(icons\adjustNW.paa);
            exceptions[] = {};

            class GVAR(adjustNorthwest50) {
                displayName = "Adjust Northwest 50";
                condition = "true";
                statement = QUOTE([ARR_2(-35.4,35.4)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustNW.paa);
                exceptions[] = {};
            };
            class GVAR(adjustNorthwest100) {
                displayName = "Adjust Northwest 100";
                condition = "true";
                statement = QUOTE([ARR_2(-70.7,70.7)] call FUNC(ui_statementAdjust));
                icon = QPATHTOF(icons\adjustNW.paa);
                exceptions[] = {};
            };
        };
    };
    class GVAR(ammunitionType) {
        displayName = "Ammunition Type";
        condition = QUOTE([] call FUNC(ui_conditionTargets));
        statement = QUOTE([''] call FUNC(ui_statementAmmoType));
        icon = QPATHTOF(icons\ammo.paa);
        exceptions[] = {};

        class GVAR(HE) {
            displayName = "HE";
            condition = QUOTE([] call FUNC(ui_conditionAmmoHE));
            statement = QUOTE(['HE'] call FUNC(ui_statementAmmoType));
            icon = QPATHTOF(icons\ammoHE.paa);
            exceptions[] = {};
        };
        class GVAR(smoke) {
            displayName = "Smoke";
            condition = QUOTE([] call FUNC(ui_conditionAmmoSmoke));
            statement = QUOTE(['Smoke'] call FUNC(ui_statementAmmoType));
            icon = QPATHTOF(icons\ammoSmoke.paa);
            exceptions[] = {};
        };
        class GVAR(flare) {
            displayName = "Flare";
            condition = QUOTE([] call FUNC(ui_conditionAmmoFlare));
            statement = QUOTE(['Flare'] call FUNC(ui_statementAmmoType));
            icon = QPATHTOF(icons\ammoFlare.paa);
            exceptions[] = {};
        };
    };
    class GVAR(volumeofFire) {
        displayName = "Volume of Fire";
        condition = QUOTE([] call FUNC(ui_conditionTargets));
        statement = QUOTE([] call FUNC(ui_statementVolumeOfFire));
        exceptions[] = {};

        class GVAR(1) {
            displayName = "1";
            condition = QUOTE([ARR_2(1,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(1,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
        class GVAR(5) {
            displayName = "5";
            condition = QUOTE([ARR_2(5,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(5,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
        class GVAR(10) {
            displayName = "10";
            condition = QUOTE([ARR_2(10,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(10,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
        class GVAR(15) {
            displayName = "15";
            condition = QUOTE([ARR_2(15,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(15,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
        class GVAR(20) {
            displayName = "20";
            condition = QUOTE([ARR_2(20,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(20,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
        class GVAR(25) {
            displayName = "25";
            condition = QUOTE([ARR_2(25,GVAR(ammoType))] call FUNC(ui_conditionAmmoVolume));
            statement = QUOTE([ARR_2(25,GVAR(ammoType))] call FUNC(ui_statementAmmoVolume));
            exceptions[] = {};
        };
    };
    class GVAR(numberofGuns) {
        displayName = "Number of Guns";
        condition = QUOTE([] call FUNC(ui_conditionTargets));
        statement = QUOTE(-1 call FUNC(ui_statementNumberOfGuns));
        exceptions[] = {};

        class GVAR(all) {
            displayName = "All";
            condition = QUOTE(GVAR(batterySize) call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(GVAR(batterySize) call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(1) {
            displayName = "1";
            condition = QUOTE(1 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(1 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(2) {
            displayName = "2";
            condition = QUOTE(2 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(2 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(3) {
            displayName = "3";
            condition = QUOTE(3 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(3 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(4) {
            displayName = "4";
            condition = QUOTE(4 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(4 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(5) {
            displayName = "5";
            condition = QUOTE(5 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(5 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(10) {
            displayName = "10";
            condition = QUOTE(10 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(10 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(15) {
            displayName = "15";
            condition = QUOTE(15 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(15 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(20) {
            displayName = "20";
            condition = QUOTE(20 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(20 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
        class GVAR(25) {
            displayName = "25";
            condition = QUOTE(25 call FUNC(ui_conditionNumberOfGuns));
            statement = QUOTE(25 call FUNC(ui_statementNumberOfGuns));
            exceptions[] = {};
        };
    };
    class GVAR(callForFire) {
        displayName = "Call for Fire";
        condition = QUOTE([] call FUNC(ui_conditionTargets));
        statement = QUOTE([] call FUNC(ui_statementSafety));
        icon = QPATHTOF(icons\main.paa);
        exceptions[] = {};

        class GVAR(Confirm) {
            displayName = "Confirm!";
            condition = "true";
            statement = QUOTE([] call FUNC(ui_statementFireMission));
            icon = QPATHTOF(icons\main.paa);
            exceptions[] = {};
        };
    };
};
