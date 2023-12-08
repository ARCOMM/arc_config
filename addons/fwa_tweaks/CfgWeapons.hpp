class CfgWeapons {
    // Weapons
    class LMG_Zafir_F;
    class sp_fwa_machinegun_base : LMG_Zafir_F {
        class LinkedItems {
            class LinkedItemsMuzzle {
                slot = "PointerSlot";
                item = "sp_fwa_acc_machinegun_linkhide";
            };
        };
    };

    class sp_fwa_rifle_base;

    class sp_fwa_rifle_762_base;
    class sp_fwa_bren_base : sp_fwa_rifle_762_base {
        discreteDistance[] = {200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600};
    };
    class sp_fwa_fm2429_base : sp_fwa_rifle_762_base {
        discreteDistance[] = {200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600};
    };
    class sp_fwa_garand_base : sp_fwa_rifle_762_base {
        discreteDistance[] = {200, 300, 400, 500, 600, 700};
    };

    class sp_fwa_rifle_boltaction_762_base;
    class sp_fwa_enfield_no4 : sp_fwa_rifle_boltaction_762_base {
        discreteDistance[] = {400, 200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300};
    };
    class sp_fwa_enfield_no4t : sp_fwa_enfield_no4 {
        discreteDistance[] = {200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300};
    };

    class sp_fwa_smg_9mm_base : sp_fwa_rifle_base {
        ace_overheating_closedBolt = 0;
    };

    class sp_fwa_smg_sterling : sp_fwa_smg_9mm_base {
        discreteDistance[] = {100, 200};
    };

    class sp_fwa_smg_mk6sterling : sp_fwa_smg_sterling { //The Sterling Mk6 Police Carbine fires from a closed bolt, unlike ever other version
        ace_overheating_closedBolt = 1;
    };

    class sp_fwa_smg_thompson_m1a1;
    class sp_fwa_smg_thompson_m1928a1 : sp_fwa_smg_thompson_m1a1 {
        discreteDistance[] = {150, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600};
    };

    // Optics
    class InventoryOpticsItem_Base_F;
    class optic_DMS; /* : ItemCore {
        class ItemInfo : InventoryOpticsItem_Base_F {
            class OpticsModes;
    };*/
    class sp_fwa_scope_ar_colt3x20 : optic_DMS {
        class ItemInfo : InventoryOpticsItem_Base_F {
            class OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_ar_colt3x20_3d : sp_fwa_scope_ar_colt3x20 {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_ar_colt3x20_pip : sp_fwa_scope_ar_colt3x20_3d {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_ar_colt4x20 : sp_fwa_scope_ar_colt3x20 {
        class ItemInfo : ItemInfo {
            class OpticsModes;
        };
    };
    class sp_fwa_scope_ar_colt4x20_3d : sp_fwa_scope_ar_colt4x20 {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_ar_colt4x20_pip : sp_fwa_scope_ar_colt4x20_3d {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_m1_m84 : optic_DMS {
        class ItemInfo : InventoryOpticsItem_Base_F {
            class OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_m1_m84_pip : sp_fwa_scope_m1_m84 {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_garand_m84 : optic_DMS {
        class ItemInfo : InventoryOpticsItem_Base_F {
            class OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
    class sp_fwa_scope_garand_m84_pip : sp_fwa_scope_garand_m84 {
        class ItemInfo : ItemInfo {
            class OpticsModes : OpticsModes {
                class Scope {
                    discreteDistance[] = {100, 200, 300, 400, 500};
                };
            };
        };
    };
};
