class CfgWeapons {
	class LMG_Zafir_F;
	class sp_fwa_machinegun_base : LMG_Zafir_F {
		class LinkedItems
		{
			class LinkedItemsMuzzle
			{
				slot = "PointerSlot";
				item = "sp_fwa_acc_machinegun_linkhide";
			};
		};
	};

    class sp_fwa_rifle_base;

    class sp_fwa_smg_9mm_base : sp_fwa_rifle_base {
        ace_overheating_closedBolt = 0;
    };

    class sp_fwa_smg_sterling;

    class sp_fwa_smg_mk6sterling : sp_fwa_smg_sterling { //The Sterling Mk6 Police Carbine fires from a closed bolt, unlike ever other version
        ace_overheating_closedBolt = 1;
    };
};
