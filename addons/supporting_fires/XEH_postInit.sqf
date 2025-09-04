#include "script_component.hpp"

if (isServer) then {
    if (isNil "GVAR(shellsHE_AmmoCountWest)") then {GVAR(shellsHE_AmmoCountWest) = 0};
    if (isNil "GVAR(shellsSmoke_AmmoCountWest)") then {GVAR(shellsSmoke_AmmoCountWest) = 0};
    if (isNil "GVAR(shellsFlare_AmmoCountWest)") then {GVAR(shellsFlare_AmmoCountWest) = 0};

    if (isNil "GVAR(shellsHE_AmmoCountEast)") then {GVAR(shellsHE_AmmoCountEast) = 0};
    if (isNil "GVAR(shellsSmoke_AmmoCountEast)") then {GVAR(shellsSmoke_AmmoCountEast) = 0};
    if (isNil "GVAR(shellsFlare_AmmoCountEast)") then {GVAR(shellsFlare_AmmoCountEast) = 0};

    if (isNil "GVAR(shellsHE_AmmoCountGuer)") then {GVAR(shellsHE_AmmoCountGuer) = 0};
    if (isNil "GVAR(shellsSmoke_AmmoCountGuer)") then {GVAR(shellsSmoke_AmmoCountGuer) = 0};
    if (isNil "GVAR(shellsFlare_AmmoCountGuer)") then {GVAR(shellsFlare_AmmoCountGuer) = 0};

    publicVariable "GVAR(shellsHE_AmmoCountWest)";
    publicVariable "GVAR(shellsSmoke_AmmoCountWest)";
    publicVariable "GVAR(shellsFlare_AmmoCountWest)";

    publicVariable "GVAR(shellsHE_AmmoCountEast)";
    publicVariable "GVAR(shellsSmoke_AmmoCountEast)";
    publicVariable "GVAR(shellsFlare_AmmoCountEast)";

    publicVariable "GVAR(shellsFlare_AmmoCountGuer)";
    publicVariable "GVAR(shellsHE_AmmoCountGuer)";
    publicVariable "GVAR(shellsSmoke_AmmoCountGuer)";

    GVAR(fireMissionAvailableZeus) = true;
    GVAR(fireMissionAvailableWest) = true;
    GVAR(fireMissionAvailableEast) = true;
    GVAR(fireMissionAvailableGuer) = true;
    publicVariable "GVAR(fireMissionAvailableZeus)";
    publicVariable "GVAR(fireMissionAvailableWest)";
    publicVariable "GVAR(fireMissionAvailableEast)";
    publicVariable "GVAR(fireMissionAvailableGuer)";
};

if (isNil "GVAR(target01West)") then {GVAR(target01West) = ""};
if (isNil "GVAR(target02West)") then {GVAR(target02West) = ""};
if (isNil "GVAR(target03West)") then {GVAR(target03West) = ""};
if (isNil "GVAR(target04West)") then {GVAR(target04West) = ""};
if (isNil "GVAR(target05West)") then {GVAR(target05West) = ""};
if (isNil "GVAR(target06West)") then {GVAR(target06West) = ""};

if (isNil "GVAR(target01East)") then {GVAR(target01East) = ""};
if (isNil "GVAR(target02East)") then {GVAR(target02East) = ""};
if (isNil "GVAR(target03East)") then {GVAR(target03East) = ""};
if (isNil "GVAR(target04East)") then {GVAR(target04East) = ""};
if (isNil "GVAR(target05East)") then {GVAR(target05East) = ""};
if (isNil "GVAR(target06East)") then {GVAR(target06East) = ""};

if (isNil "GVAR(target01Guer)") then {GVAR(target01Guer) = ""};
if (isNil "GVAR(target02Guer)") then {GVAR(target02Guer) = ""};
if (isNil "GVAR(target03Guer)") then {GVAR(target03Guer) = ""};
if (isNil "GVAR(target04Guer)") then {GVAR(target04Guer) = ""};
if (isNil "GVAR(target05Guer)") then {GVAR(target05Guer) = ""};
if (isNil "GVAR(target06Guer)") then {GVAR(target06Guer) = ""};

if (isNil "GVAR(target01Zeus)") then {GVAR(target01Zeus) = ""};
if (isNil "GVAR(target02Zeus)") then {GVAR(target02Zeus) = ""};
if (isNil "GVAR(target03Zeus)") then {GVAR(target03Zeus) = ""};
if (isNil "GVAR(target04Zeus)") then {GVAR(target04Zeus) = ""};
if (isNil "GVAR(target05Zeus)") then {GVAR(target05Zeus) = ""};
if (isNil "GVAR(target06Zeus)") then {GVAR(target06Zeus) = ""};

if (isNil "GVAR(batterySizeWest)") then {GVAR(batterySizeWest) = 5};
if (isNil "GVAR(batterySizeEast)") then {GVAR(batterySizeEast) = 5};
if (isNil "GVAR(batterySizeGuer)") then {GVAR(batterySizeGuer) = 5};
if (isNil "GVAR(batterySizeZeus)") then {GVAR(batterySizeZeus) = 5};

if (isNil "GVAR(shellsHE_TypeWest)") then {GVAR(shellsHE_TypeWest) = "Sh_82mm_AMOS"};
if (isNil "GVAR(shellsSmoke_TypeWest)") then {GVAR(shellsSmoke_TypeWest) = "Smoke_82mm_AMOS_White"};
if (isNil "GVAR(shellsFlare_TypeWest)") then {GVAR(shellsFlare_TypeWest) = "LIB_40mm_White"};

if (isNil "GVAR(shellsHE_TypeEast)") then {GVAR(shellsHE_TypeEast) = "Sh_82mm_AMOS"};
if (isNil "GVAR(shellsSmoke_TypeEast)") then {GVAR(shellsSmoke_TypeEast) = "Smoke_82mm_AMOS_White"};
if (isNil "GVAR(shellsFlare_TypeEast)") then {GVAR(shellsFlare_TypeEast) = "LIB_40mm_White"};

if (isNil "GVAR(shellsHE_TypeGuer)") then {GVAR(shellsHE_TypeGuer) = "Sh_82mm_AMOS"};
if (isNil "GVAR(shellsSmoke_TypeGuer)") then {GVAR(shellsSmoke_TypeGuer) = "Smoke_82mm_AMOS_White"};
if (isNil "GVAR(shellsFlare_TypeGuer)") then {GVAR(shellsFlare_TypeGuer) = "LIB_40mm_White"};

if (isNil "GVAR(shellsHE_TypeZeus)") then {GVAR(shellsHE_TypeZeus) = "Sh_82mm_AMOS"};
if (isNil "GVAR(shellsSmoke_TypeZeus)") then {GVAR(shellsSmoke_TypeZeus) = "Smoke_82mm_AMOS_White"};
if (isNil "GVAR(shellsFlare_TypeZeus)") then {GVAR(shellsFlare_TypeZeus) = "LIB_40mm_White"};

if (isNil "GVAR(shellAccuracyWest)") then {GVAR(shellAccuracyWest) = 100};
if (isNil "GVAR(shellAccuracyEast)") then {GVAR(shellAccuracyEast) = 100};
if (isNil "GVAR(shellAccuracyGuer)") then {GVAR(shellAccuracyGuer) = 100};

if (isNil "GVAR(shellDispersionWest)") then {GVAR(shellDispersionWest) = 100};
if (isNil "GVAR(shellDispersionEast)") then {GVAR(shellDispersionEast) = 100};
if (isNil "GVAR(shellDispersionGuer)") then {GVAR(shellDispersionGuer) = 100};
if (isNil "GVAR(shellDispersionZeus)") then {GVAR(shellDispersionZeus) = 100};

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
    if (!isNil "God" && {God isEqualTo player || {group player isEqualTo group God}}) then {
        GVAR(isZEUS) = true;
        GVAR(target01) = GVAR(target01Zeus);
        GVAR(target02) = GVAR(target02Zeus);
        GVAR(target03) = GVAR(target03Zeus);
        GVAR(target04) = GVAR(target04Zeus);
        GVAR(target05) = GVAR(target05Zeus);
        GVAR(target06) = GVAR(target06Zeus);

        GVAR(target01_Name) = markerText GVAR(target01Zeus);
        GVAR(target02_Name) = markerText GVAR(target02Zeus);
        GVAR(target03_Name) = markerText GVAR(target03Zeus);
        GVAR(target04_Name) = markerText GVAR(target04Zeus);
        GVAR(target05_Name) = markerText GVAR(target05Zeus);
        GVAR(target06_Name) = markerText GVAR(target06Zeus);

        GVAR(shellsHE_Type) = GVAR(shellsHE_TypeZeus);
        GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeZeus);
        GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeZeus);

        GVAR(shellDispersion) = GVAR(shellDispersionZeus);
        GVAR(shellAccuracy) = 0;

        GVAR(originalShellDispersion) = GVAR(shellDispersionZeus);
        GVAR(originalShellAccuracy) = 0;

        GVAR(batterySize) = GVAR(batterySizeZeus);

        #include "actions.inc.sqf"

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

                GVAR(target01_Name) = markerText GVAR(target01West);
                GVAR(target02_Name) = markerText GVAR(target02West);
                GVAR(target03_Name) = markerText GVAR(target03West);
                GVAR(target04_Name) = markerText GVAR(target04West);
                GVAR(target05_Name) = markerText GVAR(target05West);
                GVAR(target06_Name) = markerText GVAR(target06West);

                GVAR(shellsHE_Type) = GVAR(shellsHE_TypeWest);
                GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeWest);
                GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeWest);

                GVAR(shellDispersion) = GVAR(shellDispersionWest);
                GVAR(shellAccuracy) = GVAR(shellAccuracyWest);

                GVAR(originalShellDispersion) = GVAR(shellDispersionWest);
                GVAR(originalShellAccuracy) = GVAR(shellAccuracyWest);

                GVAR(batterySize) = GVAR(batterySizeWest);

                #include "actions.inc.sqf"

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

                GVAR(target01_Name) = markerText GVAR(target01East);
                GVAR(target02_Name) = markerText GVAR(target02East);
                GVAR(target03_Name) = markerText GVAR(target03East);
                GVAR(target04_Name) = markerText GVAR(target04East);
                GVAR(target05_Name) = markerText GVAR(target05East);
                GVAR(target06_Name) = markerText GVAR(target06East);

                GVAR(shellsHE_Type) = GVAR(shellsHE_TypeEast);
                GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeEast);
                GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeEast);

                GVAR(shellDispersion) = GVAR(shellDispersionEast);
                GVAR(shellAccuracy) = GVAR(shellAccuracyEast);

                GVAR(originalShellDispersion) = GVAR(shellDispersionEast);
                GVAR(originalShellAccuracy) = GVAR(shellAccuracyEast);

                GVAR(batterySize) = GVAR(batterySizeEast);

                #include "actions.inc.sqf"

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

                GVAR(target01_Name) = markerText GVAR(target01Guer);
                GVAR(target02_Name) = markerText GVAR(target02Guer);
                GVAR(target03_Name) = markerText GVAR(target03Guer);
                GVAR(target04_Name) = markerText GVAR(target04Guer);
                GVAR(target05_Name) = markerText GVAR(target05Guer);
                GVAR(target06_Name) = markerText GVAR(target06Guer);

                GVAR(shellsHE_Type) = GVAR(shellsHE_TypeGuer);
                GVAR(shellsSmoke_Type) = GVAR(shellsSmoke_TypeGuer);
                GVAR(shellsFlare_Type) = GVAR(shellsFlare_TypeGuer);

                GVAR(shellDispersion) = GVAR(shellDispersionGuer);
                GVAR(shellAccuracy) = GVAR(shellAccuracyGuer);

                GVAR(originalShellDispersion) = GVAR(shellDispersionGuer);
                GVAR(originalShellAccuracy) = GVAR(shellAccuracyGuer);

                GVAR(batterySize) = GVAR(batterySizeGuer);

                #include "actions.inc.sqf"

                def_fireMissionBriefingMessage;
            };
        };
    };
};
