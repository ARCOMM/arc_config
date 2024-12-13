#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "bwa3_carlgustav",
            "bwa3_g28",
            "bwa3_g29",
            "bwa3_g36",
            "bwa3_g38",
            "bwa3_g82",
            "bwa3_mg3",
            "bwa3_mg4",
            "bwa3_mg5",
            "bwa3_mp7",
            "bwa3_p12",
            "bwa3_p8",
            "bwa3_weapons"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

#include "CfgMagazineWells.hpp"
#include "CfgWeapons.hpp"
