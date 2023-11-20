#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = { "arc_cfg_main" };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
        is3DENmod = 1;
    };
};

#include "Cfg3DEN.hpp"
#include "CfgMagazines.hpp"
#include "CfgMissions.hpp"
#include "CfgWeapons.hpp"
