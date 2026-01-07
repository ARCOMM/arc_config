#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "ace_minedetector",
            "ace_medical_treatment"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

#include "ACE_detector.hpp"
#include "ace_medical_replacementItems.hpp"
#include "ace_medical_treatment.hpp"
#include "Cfg3DEN.hpp"
#include "CfgEventHandlers.hpp"
