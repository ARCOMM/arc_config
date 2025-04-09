#include "script_component.hpp"

class CfgPatches {
    class cba_settings_userconfig {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = { "arc_cfg_main" };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};
