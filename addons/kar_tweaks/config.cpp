#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "KAR_XM250"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "CfgWeapons.hpp"
