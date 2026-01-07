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

#include "CfgEventhandlers.hpp"
#include "CfgFunctions.hpp"
#include "CfgUserActions.hpp"
#include "UserActionGroups.hpp"
