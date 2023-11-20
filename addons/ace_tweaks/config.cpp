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
    };
};

#include "ACE_detector.hpp"
#include "Cfg3DEN.hpp"
#include "CfgEventHandlers.hpp"
