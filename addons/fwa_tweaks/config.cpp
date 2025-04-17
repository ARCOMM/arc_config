#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "arc_cfg_a3_tweaks",
            "sp_fwa_weapon_base",
            "sp_fwa_garand",
            "sp_fwa_machinegun_core",
            "sp_fwa_Sterling",
            "cup_weapons_loadorder"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

#include "CfgMagazines.hpp"
#include "CfgWeapons.hpp"

// Remove FWA function that wraps/unwraps belts.
class RscInGameUI {
    class RscWeaponZeroing;
    class sp_fwa_machinegun_animation: RscWeaponZeroing {
        onLoad = ""; //onLoad = "_this call Spearpoint_fnc_machinegunrested;";
    };
};
