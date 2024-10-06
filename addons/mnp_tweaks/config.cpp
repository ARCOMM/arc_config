#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
			"MNP_OPFOR_CONFIG",
			"STOP_BLUFOR_Config",
			"MNP_MIXR_Config",
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "CfgGroups.hpp"
#include "CfgVehicles.hpp"
