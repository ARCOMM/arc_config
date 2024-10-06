#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(component);
        units[] = {};
        weapons[] = {
            "cwr3_b_vest_pasgt_oliveDrab",
            "cwr3_b_vest_pasgt_alice_oliveDrab",
            "cwr3_b_vest_pasgt_alice_oliveDrab_etool",
            "cwr3_b_vest_pasgt_alice_oliveDrab_ar",
            "cwr3_b_vest_pasgt_alice_oliveDrab_gl",
            "cwr3_b_vest_pasgt_alice_oliveDrab_mg",
            "cwr3_b_vest_pasgt_alice_oliveDrab_officer",
            "cwr3_b_vest_pasgt_alice_oliveDrab_light",
            "cwr3_b_vest_pasgt_alice_oliveDrab_medic"
        };
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "cwr3_soldiers_us",
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;
    };
};

#include "CfgWeapons.hpp"
