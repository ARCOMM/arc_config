#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"arc_cfg_main"};
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "CfgDebriefingSections.hpp"
#include "CfgEventHandlers.hpp"
