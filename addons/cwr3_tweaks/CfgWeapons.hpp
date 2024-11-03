class CfgWeapons {
    class CUP_arifle_FNFAL5060;
    class cwr3_lmg_bren : CUP_arifle_FNFAL5060 {
        magazineWell[] += {"CBA_762x51_FAL_L","CBA_762x51_FAL_XL"};
    };

    class CUP_hgun_TaurusTracker455;
    class cwr3_hgun_revolver : CUP_hgun_TaurusTracker455 {
        magazineWell[] += {"CBA_32ACP_Vz61"};
    };

    class CUP_hgun_SA61;
    class cwr3_hgun_sa61 : CUP_hgun_SA61 {
        magazineWell[] += {"CBA_32ACP_Vz61"};
    };

    class CUP_hgun_TT;
    class cwr3_hgun_tokarev : CUP_hgun_TT {
        magazineWell[] += {"CBA_762x25_TT"};
    };

    class CUP_lmg_M249_E1;
    class cwr3_lmg_m249e1 : CUP_lmg_M249_E1 {
        magazineWell[] += {"CUP_lmg_M249_E1"};
    };

    class CUP_lmg_M60;
    class cwr3_lmg_m60 : CUP_lmg_M60 {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };

    class CUP_lmg_M60E4_norail;
    class cwr3_lmg_m60e4 : CUP_lmg_M60E4_norail {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };
    class cwr3_lmg_m60e3 : cwr3_lmg_m60e4 {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };

    class CUP_lmg_MG3;
    class cwr3_lmg_mg3 : CUP_lmg_MG3 {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };

    class CUP_lmg_PKMN;
    class cwr3_lmg_pkm : CUP_lmg_PKMN {
        magazineWell[] += {"CBA_762x54R_LINKS"};
    };

    class CUP_lmg_UK59;
    class cwr3_lmg_uk59 : CUP_lmg_UK59 {
        magazineWell[] += {"CBA_762x54R_Vz59_LINKS"};
    };

    class CUP_smg_bizon;
    class cwr3_sgun_kozlice : CUP_sgun_CZ584 {
        magazineWell[] += {"CBA_12g_1rnd"};
    };

    class CUP_smg_bizon;
    class cwr3_smg_bizon : CUP_smg_bizon {
        magazineWell[] += {"CBA_9x19_PP19"};
    };
    class cwr3_smg_bizon_sd : CUP_smg_bizon {
        magazineWell[] += {"CBA_9x19_PP19"};
    };

    class CUP_smg_M3A1;
    class cwr3_smg_m3a1 : CUP_smg_M3A1 {
        magazineWell[] += {"CBA_45ACP_Grease"};
    };

    class CUP_smg_MP5A5;
    class cwr3_smg_mp5a5 : CUP_smg_MP5A5 {
        magazineWell[] += {"CBA_9x19_MP5"};
    };
    class cwr3_smg_sterling : CUP_smg_MP5A5 {
        magazineWell[] += {"CBA_9x19_Sterling"};
    };

    class CUP_smg_MP5SD6;
    class cwr3_smg_mp5sd6 : CUP_smg_MP5SD6 {
        magazineWell[] += {"CBA_9x19_MP5"};
    };

    class CUP_smg_MP5SD6;
    class cwr3_smg_sterling_sd : CUP_smg_MP5SD6 {
        magazineWell[] += {"CBA_9x19_Sterling"};
    };
    /*
    // cwr3_5rnd_cz550_m for cwr3_srifle_cz550 should be given a magwell, but the classes they derive from (CUP_5x_22_LR_17_HMR_M for CUP_srifle_CZ550) are a little confused about what they want to be and also don't have magwells.
    class CUP_srifle_CZ550;
    class cwr3_srifle_cz550 : CUP_srifle_CZ550 {
        magazineWell[] += {"xxxxx"};
    };
    */
    class CUP_srifle_LeeEnfield;
    class cwr3_srifle_enfield : CUP_srifle_LeeEnfield {
        magazineWell[] += {"CBA_303B_LeeEn"};
    };

    class CUP_srifle_M21_artel;
    class cwr3_srifle_m21 : CUP_srifle_M21_artel {
        magazineWell[] += {"CBA_762x51_M14"};
    };

    class CUP_srifle_M24_wdl;
    class cwr3_srifle_m24 : CUP_srifle_M24_wdl {
        magazineWell[] += {"CBA_762x51_1rnd", "CBA_762x51_2rnds", "CBA_762x51_3rnds", "CBA_762x51_4rnds", "CBA_762x51_5rnds"};
    };

    class CUP_srifle_SVD_pso;
    class cwr3_srifle_svd : CUP_srifle_SVD_pso {
        magazineWell[] += {"CBA_762x54R_SVD"};
    };
    /*
    // There is no CBA magwell for this weapon at this time
    class CUP_launch_MAAWS;
    class cwr3_launch_m67_rcl : CUP_launch_MAAWS {
        magazineWell[] += {"CBA_M67"};
    };
    */
    /*
    // There is no CBA magwell for this weapon at this time
    class CUP_launch_M47;
    class cwr3_launch_m47 : CUP_launch_M47 {
        magazineWell[] += {"CBA_M47_Dragon"};
    };
    */
    class CUP_launch_MAAWS;
    class cwr3_launch_carlgustaf : CUP_launch_MAAWS {
        magazineWell[] += {"CBA_Carl_Gustaf"};
    };

    class CUP_launch_RPG7V;
    class cwr3_launch_rpg7v : CUP_launch_RPG7V {
        magazineWell[] += {"CBA_RPG7"};
    };

    // Vests
	class ItemCore;
	class cwr3_b_vest_base: ItemCore
	{
		class ItemInfo;
	};
	class cwr3_b_vest_pasgt_oliveDrab: cwr3_b_vest_base
	{
		author = "drofseh";
		descriptionShort = "$STR_A3_SP_AL_II";
		displayName = "PASGT Vest (OD)";
		hiddenSelections[] = {"hs_vest1"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_woodland_ca.paa";
		scope = 2;
		scopeCurator = 2;
		scopeArsenal = 2;
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply60";
			armor = 10;
			hiddenSelections[] = {"hs_vest1"};
			mass = 55;
			passThrough = 0.5;
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_woodland.p3d";
			class HitpointsProtectionInfo
			{
				class Chest
				{
					armor = 12;
					HitpointName = "HitChest";
					PassThrough = 0.4;
				};
				class Diaphragm
				{
					armor = 12;
					HitpointName = "HitDiaphragm";
					PassThrough = 0.4;
				};
				class Abdomen
				{
					armor = 12;
					hitpointName = "HitAbdomen";
					passThrough = 0.4;
				};
				class Body
				{
					hitpointName = "HitBody";
					passThrough = 0.4;
				};
			};
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab: cwr3_b_vest_pasgt_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Rifleman)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_woodland_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply140";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_etool: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, E-Tool)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_etool_woodland.p3d";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply120";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_etool_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_ar: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Autorifleman)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_ar_woodland.p3d";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply160";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_ar_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_gl: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Grenadier)";
		hiddenSelections[] = {"hs_vest1","hs_vest2","hs_vest3"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\gear_nadevest_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_grenadier_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_gl_woodland_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply220";
			hiddenSelections[] = {"hs_vest1","hs_vest2","hs_vest3"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_grenadier_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_mg: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Machinegunner)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_mg_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_woodland_mg_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply160";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_mg_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_officer: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Officer)";
		hiddenSelections[] = {"hs_vest1","hs_vest2","hs_vest3"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_frame_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_officer_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_woodland_officer_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply120";
			hiddenSelections[] = {"hs_vest1","hs_vest2","hs_vest3"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_officer_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_light: cwr3_b_vest_pasgt_alice_oliveDrab
	{
		author = "drofseh";
		displayName = "PASGT Vest ALICE (OD, Light)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_medic_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_woodland_med_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply120";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_medic_woodland.p3d";
		};
	};
	class cwr3_b_vest_pasgt_alice_oliveDrab_medic: cwr3_b_vest_pasgt_alice_oliveDrab_light
	{
		author = "drofseh";
		scope = 1;
		displayName = "PASGT Vest ALICE (OD, Light)";
		hiddenSelections[] = {"hs_vest1","hs_vest2"};
		hiddenSelectionsTextures[] = {"\cwr3\humans\cwr3_soldiers_usa\vests\data\pasgt_vest_od_co.paa","\cwr3\humans\cwr3_soldiers_usa\vests\data\ssgear_alice_co.paa"};
		model = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_medic_woodland.p3d";
		picture = "\cwr3\humans\cwr3_soldiers_usa\ui\cwr3_v_pasgt_alice_woodland_med_ca.paa";
		class ItemInfo: ItemInfo
		{
			containerClass = "Supply120";
			hiddenSelections[] = {"hs_vest1","hs_vest2"};
			uniformModel = "\cwr3\humans\cwr3_soldiers_usa\vests\cwr3_pasgt_alice_medic_woodland.p3d";
		};
	};
};
