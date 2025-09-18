#include "script_component.hpp"

[
    {
        if (isServer) then {
            if (isNil QGVAR(shellsHE_AmmoCountWest)) then {GVAR(shellsHE_AmmoCountWest) = 0};
            if (isNil QGVAR(shellsSmoke_AmmoCountWest)) then {GVAR(shellsSmoke_AmmoCountWest) = 0};
            if (isNil QGVAR(shellsFlare_AmmoCountWest)) then {GVAR(shellsFlare_AmmoCountWest) = 0};

            if (isNil QGVAR(shellsHE_AmmoCountEast)) then {GVAR(shellsHE_AmmoCountEast) = 0};
            if (isNil QGVAR(shellsSmoke_AmmoCountEast)) then {GVAR(shellsSmoke_AmmoCountEast) = 0};
            if (isNil QGVAR(shellsFlare_AmmoCountEast)) then {GVAR(shellsFlare_AmmoCountEast) = 0};

            if (isNil QGVAR(shellsHE_AmmoCountGuer)) then {GVAR(shellsHE_AmmoCountGuer) = 0};
            if (isNil QGVAR(shellsSmoke_AmmoCountGuer)) then {GVAR(shellsSmoke_AmmoCountGuer) = 0};
            if (isNil QGVAR(shellsFlare_AmmoCountGuer)) then {GVAR(shellsFlare_AmmoCountGuer) = 0};

            publicVariable QGVAR(shellsHE_AmmoCountWest);
            publicVariable QGVAR(shellsSmoke_AmmoCountWest);
            publicVariable QGVAR(shellsFlare_AmmoCountWest);

            publicVariable QGVAR(shellsHE_AmmoCountEast);
            publicVariable QGVAR(shellsSmoke_AmmoCountEast);
            publicVariable QGVAR(shellsFlare_AmmoCountEast);

            publicVariable QGVAR(shellsFlare_AmmoCountGuer);
            publicVariable QGVAR(shellsHE_AmmoCountGuer);
            publicVariable QGVAR(shellsSmoke_AmmoCountGuer);

            GVAR(fireMissionAvailableZeus) = true;
            GVAR(fireMissionAvailableWest) = true;
            GVAR(fireMissionAvailableEast) = true;
            GVAR(fireMissionAvailableGuer) = true;
            publicVariable QGVAR(fireMissionAvailableZeus);
            publicVariable QGVAR(fireMissionAvailableWest);
            publicVariable QGVAR(fireMissionAvailableEast);
            publicVariable QGVAR(fireMissionAvailableGuer);
        };

        if (isNil QGVAR(radiosWest)) then {GVAR(radiosWest) = ["ACRE_PRC117F", "ACRE_PRC148", "ACRE_PRC152", "ACRE_PRC77", "ACRE_SEM70"]};
        if (isNil QGVAR(radiosEast)) then {GVAR(radiosEast) = ["ACRE_PRC117F", "ACRE_PRC148", "ACRE_PRC152", "ACRE_PRC77", "ACRE_SEM70"]};
        if (isNil QGVAR(radiosGuer)) then {GVAR(radiosGuer) = ["ACRE_PRC117F", "ACRE_PRC148", "ACRE_PRC152", "ACRE_PRC77", "ACRE_SEM70"]};

        if (isNil QGVAR(rolesWest)) then {GVAR(rolesWest) = []};
        if (isNil QGVAR(rolesEast)) then {GVAR(rolesEast) = []};
        if (isNil QGVAR(rolesGuer)) then {GVAR(rolesGuer) = []};

        if (isNil QGVAR(target01West)) then {GVAR(alwaysAllowGroupLeaderWest) = false};
        if (isNil QGVAR(target01West)) then {GVAR(alwaysAllowGroupLeaderEast) = false};
        if (isNil QGVAR(target01West)) then {GVAR(alwaysAllowGroupLeaderGuer) = false};

        if (isNil QGVAR(target01West)) then {GVAR(target01West) = ""};
        if (isNil QGVAR(target02West)) then {GVAR(target02West) = ""};
        if (isNil QGVAR(target03West)) then {GVAR(target03West) = ""};
        if (isNil QGVAR(target04West)) then {GVAR(target04West) = ""};
        if (isNil QGVAR(target05West)) then {GVAR(target05West) = ""};
        if (isNil QGVAR(target06West)) then {GVAR(target06West) = ""};

        if (isNil QGVAR(target01East)) then {GVAR(target01East) = ""};
        if (isNil QGVAR(target02East)) then {GVAR(target02East) = ""};
        if (isNil QGVAR(target03East)) then {GVAR(target03East) = ""};
        if (isNil QGVAR(target04East)) then {GVAR(target04East) = ""};
        if (isNil QGVAR(target05East)) then {GVAR(target05East) = ""};
        if (isNil QGVAR(target06East)) then {GVAR(target06East) = ""};

        if (isNil QGVAR(target01Guer)) then {GVAR(target01Guer) = ""};
        if (isNil QGVAR(target02Guer)) then {GVAR(target02Guer) = ""};
        if (isNil QGVAR(target03Guer)) then {GVAR(target03Guer) = ""};
        if (isNil QGVAR(target04Guer)) then {GVAR(target04Guer) = ""};
        if (isNil QGVAR(target05Guer)) then {GVAR(target05Guer) = ""};
        if (isNil QGVAR(target06Guer)) then {GVAR(target06Guer) = ""};

        if (isNil QGVAR(target01Zeus)) then {GVAR(target01Zeus) = ""};
        if (isNil QGVAR(target02Zeus)) then {GVAR(target02Zeus) = ""};
        if (isNil QGVAR(target03Zeus)) then {GVAR(target03Zeus) = ""};
        if (isNil QGVAR(target04Zeus)) then {GVAR(target04Zeus) = ""};
        if (isNil QGVAR(target05Zeus)) then {GVAR(target05Zeus) = ""};
        if (isNil QGVAR(target06Zeus)) then {GVAR(target06Zeus) = ""};

        if (isNil QGVAR(batterySizeWest)) then {GVAR(batterySizeWest) = 5};
        if (isNil QGVAR(batterySizeEast)) then {GVAR(batterySizeEast) = 5};
        if (isNil QGVAR(batterySizeGuer)) then {GVAR(batterySizeGuer) = 5};
        if (isNil QGVAR(batterySizeZeus)) then {GVAR(batterySizeZeus) = 5};

        if (isNil QGVAR(shellsHE_TypeWest)) then {GVAR(shellsHE_TypeWest) = "Sh_82mm_AMOS"};
        if (isNil QGVAR(shellsSmoke_TypeWest)) then {GVAR(shellsSmoke_TypeWest) = "Smoke_82mm_AMOS_White"};
        if (isNil QGVAR(shellsFlare_TypeWest)) then {GVAR(shellsFlare_TypeWest) = "LIB_40mm_White"};

        if (isNil QGVAR(shellsHE_TypeEast)) then {GVAR(shellsHE_TypeEast) = "Sh_82mm_AMOS"};
        if (isNil QGVAR(shellsSmoke_TypeEast)) then {GVAR(shellsSmoke_TypeEast) = "Smoke_82mm_AMOS_White"};
        if (isNil QGVAR(shellsFlare_TypeEast)) then {GVAR(shellsFlare_TypeEast) = "LIB_40mm_White"};

        if (isNil QGVAR(shellsHE_TypeGuer)) then {GVAR(shellsHE_TypeGuer) = "Sh_82mm_AMOS"};
        if (isNil QGVAR(shellsSmoke_TypeGuer)) then {GVAR(shellsSmoke_TypeGuer) = "Smoke_82mm_AMOS_White"};
        if (isNil QGVAR(shellsFlare_TypeGuer)) then {GVAR(shellsFlare_TypeGuer) = "LIB_40mm_White"};

        if (isNil QGVAR(shellsHE_TypeZeus)) then {GVAR(shellsHE_TypeZeus) = "Sh_82mm_AMOS"};
        if (isNil QGVAR(shellsSmoke_TypeZeus)) then {GVAR(shellsSmoke_TypeZeus) = "Smoke_82mm_AMOS_White"};
        if (isNil QGVAR(shellsFlare_TypeZeus)) then {GVAR(shellsFlare_TypeZeus) = "LIB_40mm_White"};

        if (isNil QGVAR(shellAccuracyWest)) then {GVAR(shellAccuracyWest) = 100};
        if (isNil QGVAR(shellAccuracyEast)) then {GVAR(shellAccuracyEast) = 100};
        if (isNil QGVAR(shellAccuracyGuer)) then {GVAR(shellAccuracyGuer) = 100};

        if (isNil QGVAR(shellDispersionWest)) then {GVAR(shellDispersionWest) = 100};
        if (isNil QGVAR(shellDispersionEast)) then {GVAR(shellDispersionEast) = 100};
        if (isNil QGVAR(shellDispersionGuer)) then {GVAR(shellDispersionGuer) = 100};
        if (isNil QGVAR(shellDispersionZeus)) then {GVAR(shellDispersionZeus) = 100};

        if (GVAR(batterySizeZeus) < 1) then {GVAR(batterySizeZeus) = 1};
        if (GVAR(batterySizeZeus) > 25) then {GVAR(batterySizeZeus) = 25};
        if (GVAR(batterySizeWest) < 1) then {GVAR(batterySizeWest) = 1};
        if (GVAR(batterySizeWest) > 25) then {GVAR(batterySizeWest) = 25};
        if (GVAR(batterySizeEast) < 1) then {GVAR(batterySizeEast) = 1};
        if (GVAR(batterySizeEast) > 25) then {GVAR(batterySizeEast) = 25};
        if (GVAR(batterySizeGuer) < 1) then {GVAR(batterySizeGuer) = 1};
        if (GVAR(batterySizeGuer) > 25) then {GVAR(batterySizeGuer) = 25};

        GVAR(isZEUS) = false;
        GVAR(isWest) = false;
        GVAR(isEast) = false;
        GVAR(isGuer) = false;
        GVAR(isCiv) = false;

        GVAR(target01) = "";
        GVAR(target02) = "";
        GVAR(target03) = "";
        GVAR(target04) = "";
        GVAR(target05) = "";
        GVAR(target06) = "";

        GVAR(target01_Name) = "";
        GVAR(target02_Name) = "";
        GVAR(target03_Name) = "";
        GVAR(target04_Name) = "";
        GVAR(target05_Name) = "";
        GVAR(target06_Name) = "";

        if (GVAR(batterySizeZeus) < 1) then {GVAR(batterySizeZeus) = 1};
        if (GVAR(batterySizeZeus) > 25) then {GVAR(batterySizeZeus) = 25};
        if (GVAR(batterySizeWest) < 1) then {GVAR(batterySizeWest) = 1};
        if (GVAR(batterySizeWest) > 25) then {GVAR(batterySizeWest) = 25};
        if (GVAR(batterySizeEast) < 1) then {GVAR(batterySizeEast) = 1};
        if (GVAR(batterySizeEast) > 25) then {GVAR(batterySizeEast) = 25};
        if (GVAR(batterySizeGuer) < 1) then {GVAR(batterySizeGuer) = 1};
        if (GVAR(batterySizeGuer) > 25) then {GVAR(batterySizeGuer) = 25};

        GVAR(previousTarget) = "None";
        GVAR(targetType) = "TargetVisual";
        GVAR(previousTarget)Name = "your mark";
        GVAR(ammoType) = "Smoke";
        GVAR(volumeOfFire) = 1;
        GVAR(numberOfGuns) = 1;
        GVAR(adjustmentCoords) = [0, 0];
        GVAR(adjustmentDirection) = "no adjustment";

        if (hasInterface) then {
            if !(isNull (getAssignedCuratorLogic player)) then { //!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
                GVAR(isZEUS) = true;
                GVAR(target01) = GVAR(target01Zeus);
                GVAR(target02) = GVAR(target02Zeus);
                GVAR(target03) = GVAR(target03Zeus);
                GVAR(target04) = GVAR(target04Zeus);
                GVAR(target05) = GVAR(target05Zeus);
                GVAR(target06) = GVAR(target06Zeus);

                GVAR(target01_Name) = ["Target 01", markerText GVAR(target01Zeus)] select (markerText GVAR(target01Zeus) != "");
                GVAR(target02_Name) = ["Target 02", markerText GVAR(target02Zeus)] select (markerText GVAR(target02Zeus) != "");
                GVAR(target03_Name) = ["Target 03", markerText GVAR(target03Zeus)] select (markerText GVAR(target03Zeus) != "");
                GVAR(target04_Name) = ["Target 04", markerText GVAR(target04Zeus)] select (markerText GVAR(target04Zeus) != "");
                GVAR(target05_Name) = ["Target 05", markerText GVAR(target05Zeus)] select (markerText GVAR(target05Zeus) != "");
                GVAR(target06_Name) = ["Target 06", markerText GVAR(target06Zeus)] select (markerText GVAR(target06Zeus) != "");

                GVAR(shellsHE_Type) = GVAR(shellsHE_TypeZeus);
                GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeZeus);
                GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeZeus);

                GVAR(shellDispersion) = GVAR(shellDispersionZeus);
                GVAR(shellAccuracy) = 0;

                GVAR(originalShellDispersion) = GVAR(shellDispersionZeus);
                GVAR(originalShellAccuracy) = 0;

                GVAR(batterySize) = GVAR(batterySizeZeus);

                def_fireMissionBriefingMessage;
            } else {
                if (playerSide == west) exitWith {
                    GVAR(isWest) = true;
                    if (GVAR(shellsHE_AmmoCountWest) >= 1 || {GVAR(shellsSmoke_AmmoCountWest) >= 1} || {GVAR(shellsFlare_AmmoCountWest) >= 1}) then {
                        GVAR(target01) = GVAR(target01West);
                        GVAR(target02) = GVAR(target02West);
                        GVAR(target03) = GVAR(target03West);
                        GVAR(target04) = GVAR(target04West);
                        GVAR(target05) = GVAR(target05West);
                        GVAR(target06) = GVAR(target06West);

                        GVAR(target01_Name) = ["Target 01", markerText GVAR(target01West)] select (markerText GVAR(target01West) != "");
                        GVAR(target02_Name) = ["Target 02", markerText GVAR(target02West)] select (markerText GVAR(target02West) != "");
                        GVAR(target03_Name) = ["Target 03", markerText GVAR(target03West)] select (markerText GVAR(target03West) != "");
                        GVAR(target04_Name) = ["Target 04", markerText GVAR(target04West)] select (markerText GVAR(target04West) != "");
                        GVAR(target05_Name) = ["Target 05", markerText GVAR(target05West)] select (markerText GVAR(target05West) != "");
                        GVAR(target06_Name) = ["Target 06", markerText GVAR(target06West)] select (markerText GVAR(target06West) != "");

                        GVAR(shellsHE_Type) = GVAR(shellsHE_TypeWest);
                        GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeWest);
                        GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeWest);

                        GVAR(shellDispersion) = GVAR(shellDispersionWest);
                        GVAR(shellAccuracy) = GVAR(shellAccuracyWest);

                        GVAR(originalShellDispersion) = GVAR(shellDispersionWest);
                        GVAR(originalShellAccuracy) = GVAR(shellAccuracyWest);

                        GVAR(batterySize) = GVAR(batterySizeWest);

                        def_fireMissionBriefingMessage;
                    };
                };

                if (playerSide == east) exitWith {
                    GVAR(isEast) = true;
                    if (GVAR(shellsHE_AmmoCountEast) >= 1 || {GVAR(shellsSmoke_AmmoCountEast) >= 1} || {GVAR(shellsFlare_AmmoCountEast) >= 1}) then {
                        GVAR(target01) = GVAR(target01East);
                        GVAR(target02) = GVAR(target02East);
                        GVAR(target03) = GVAR(target03East);
                        GVAR(target04) = GVAR(target04East);
                        GVAR(target05) = GVAR(target05East);
                        GVAR(target06) = GVAR(target06East);

                        GVAR(target01_Name) = ["Target 01", markerText GVAR(target01East)] select (markerText GVAR(target01East) != "");
                        GVAR(target02_Name) = ["Target 02", markerText GVAR(target02East)] select (markerText GVAR(target02East) != "");
                        GVAR(target03_Name) = ["Target 03", markerText GVAR(target03East)] select (markerText GVAR(target03East) != "");
                        GVAR(target04_Name) = ["Target 04", markerText GVAR(target04East)] select (markerText GVAR(target04East) != "");
                        GVAR(target05_Name) = ["Target 05", markerText GVAR(target05East)] select (markerText GVAR(target05East) != "");
                        GVAR(target06_Name) = ["Target 06", markerText GVAR(target06East)] select (markerText GVAR(target06East) != "");

                        GVAR(shellsHE_Type) = GVAR(shellsHE_TypeEast);
                        GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeEast);
                        GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeEast);

                        GVAR(shellDispersion) = GVAR(shellDispersionEast);
                        GVAR(shellAccuracy) = GVAR(shellAccuracyEast);

                        GVAR(originalShellDispersion) = GVAR(shellDispersionEast);
                        GVAR(originalShellAccuracy) = GVAR(shellAccuracyEast);

                        GVAR(batterySize) = GVAR(batterySizeEast);

                        def_fireMissionBriefingMessage;
                    };
                };

                if (playerSide == resistance) exitWith {
                    GVAR(isGuer) = true;
                    if (GVAR(shellsHE_AmmoCountGuer) >= 1 || {GVAR(shellsSmoke_AmmoCountGuer) >= 1} || {GVAR(shellsFlare_AmmoCountGuer) >= 1}) then {
                        GVAR(target01) = GVAR(target01Guer);
                        GVAR(target02) = GVAR(target02Guer);
                        GVAR(target03) = GVAR(target03Guer);
                        GVAR(target04) = GVAR(target04Guer);
                        GVAR(target05) = GVAR(target05Guer);
                        GVAR(target06) = GVAR(target06Guer);

                        GVAR(target01_Name) = ["Target 01", markerText GVAR(target01Guer)] select (markerText GVAR(target01Guer) != "");
                        GVAR(target02_Name) = ["Target 02", markerText GVAR(target02Guer)] select (markerText GVAR(target02Guer) != "");
                        GVAR(target03_Name) = ["Target 03", markerText GVAR(target03Guer)] select (markerText GVAR(target03Guer) != "");
                        GVAR(target04_Name) = ["Target 04", markerText GVAR(target04Guer)] select (markerText GVAR(target04Guer) != "");
                        GVAR(target05_Name) = ["Target 05", markerText GVAR(target05Guer)] select (markerText GVAR(target05Guer) != "");
                        GVAR(target06_Name) = ["Target 06", markerText GVAR(target06Guer)] select (markerText GVAR(target06Guer) != "");

                        GVAR(shellsHE_Type) = GVAR(shellsHE_TypeGuer);
                        GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeGuer);
                        GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeGuer);

                        GVAR(shellDispersion) = GVAR(shellDispersionGuer);
                        GVAR(shellAccuracy) = GVAR(shellAccuracyGuer);

                        GVAR(originalShellDispersion) = GVAR(shellDispersionGuer);
                        GVAR(originalShellAccuracy) = GVAR(shellAccuracyGuer);

                        GVAR(batterySize) = GVAR(batterySizeGuer);

                        def_fireMissionBriefingMessage;
                    };
                };
            };
        };
    },
    [],
    0.01
] call CBA_fnc_waitAndExecute;
