#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "ASZ_Main_A3",
            "ASZ_EditorPreviews_A3"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

class RscControlsGroup;
class RscStandardDisplay;
class RscPictureKeepAspect;
class RscDisplayMain: RscStandardDisplay {
    class controls {
        class Logo: RscPictureKeepAspect {
            text = "\a3\Ui_f\data\Logos\arma3_shadow_ca.paa";
            tooltip = "View game credits, see the names behind Arma 3.";
            h = "1 * 5 * (pixelH * pixelGrid * 2)";
            w = "2 * 5 * (pixelW * pixelGrid * 2)";
            x = "0.5 - 5 * (pixelW * pixelGrid * 2)";
            y = "safezoneY + (3 - 0.5 * 5) * (pixelH * pixelGrid * 2)";
            onButtonClick = "if (scriptdone (missionnamespace getvariable ['RscDisplayMain_credits',scriptnull])) then {RscDisplayMain_credits = _this spawn (uinamespace getvariable 'bis_fnc_credits');};";
            onKillFocus = "(_this select 0) ctrlsettextcolor [0.9,0.9,0.9,1];";
            onSetFocus = "(_this select 0) ctrlsettextcolor [1,1,1,1];";
            onLoad = "(_this select 0) ctrlshow !(395180 in getDLCs 1)";
        };
        class LogoApex: Logo {
            show = 1;
            text = "\a3\Ui_f\data\Logos\arma3_shadow_ca.paa";
            onLoad = "(_this select 0) ctrlshow (395180 in getDLCs 1)";
        };
    };
};
class RscBackgroundLogo: RscPictureKeepAspect {
    text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
    h = "(8 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 20))";
    w = "(8 * (((safezoneW / safezoneH) min 1.2) / 32))";
    x = "safezoneX + safezoneW - (9 * (((safezoneW / safezoneH) min 1.2) / 32))";
    y = "safezoneY - 2 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
};
class RscDisplayStart: RscStandardDisplay {
    class controls {
        class LoadingStart: RscControlsGroup {
            class controls {
                class Logo: RscPictureKeepAspect {
                    text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
                    h = "0.25 * safezoneH";
                    w = "0.5 * safezoneW";
                    x = "0.25 * safezoneW";
                    y = "0.3125 * safezoneH";
                };
            };
        };
    };
};
class RscDisplayNotFreeze: RscStandardDisplay {
    class controls {
        class LoadingStart: RscControlsGroup {
            class controls {
                class Logo: RscPictureKeepAspect {
                    text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
                    h = "0.25 * safezoneH";
                    w = "0.5 * safezoneW";
                    x = "0.25 * safezoneW";
                    y = "0.3125 * safezoneH";
                };
            };
        };
    };
};
class RscDisplayLoadMission: RscStandardDisplay {
    class controls {
        class LoadingStart: RscControlsGroup {
            class controls {
                class Logo: RscPictureKeepAspect {
                    text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
                    h = "0.25 * safezoneH";
                    w = "0.5 * safezoneW";
                    x = "0.25 * safezoneW";
                    y = "0.3125 * safezoneH";
                };
            };
        };
    };
};
class RscTitles {
    class SplashArma3 {
        class Picture: RscPictureKeepAspect {
            text = "\A3\Ui_f\data\Logos\arma3_splash_ca.paa";
            h = "10 * (0.025 * SafezoneH)";
            w = "20 * (0.01875 * SafezoneH)";
            x = "0.5 - 10 * (0.01875 * SafezoneH)";
            y = "0.5 - 6 * (0.025 * SafezoneH)";
        };
    };
};
