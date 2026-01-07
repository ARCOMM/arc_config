#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "cwr3_weapon_config",
            "cwr3_soldiers_us"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

#include "CfgMagazineWells.hpp"
#include "CfgWeapons.hpp"
