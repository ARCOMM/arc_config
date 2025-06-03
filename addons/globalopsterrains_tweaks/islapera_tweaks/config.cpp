#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "GOT_Map_IslaPera"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

#include "CfgWorlds.hpp"
