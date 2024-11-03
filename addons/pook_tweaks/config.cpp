#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "pook_GL_c",
            "pook_H13"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "CfgMagazines.hpp"
#include "CfgWeapons.hpp"
