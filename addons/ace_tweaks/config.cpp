#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "ace_minedetector",
			"ace_medical_treatment",
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "ACE_detector.hpp"
#include "ace_medical_replacementItems.hpp"
#include "Cfg3DEN.hpp"
#include "CfgEventHandlers.hpp"
