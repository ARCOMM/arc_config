class CfgWeapons {
	class arifle_AKM_base_F;
	class arifle_AKS_base_F;
	class LMG_03_base_F;
	class arifle_SPAR_01_base_F;
	class arifle_SPAR_01_GL_base_F;
	class arifle_SPAR_02_base_F;
	class arifle_SPAR_03_base_F;
	class DMR_06_hunter_base_F;
	class DMR_06_base_F;
	HIDE_CLASS(arifle_AKM_F,arifle_AKM_base_F);
	HIDE_CLASS(arifle_AKS_F,arifle_AKS_base_F);
	HIDE_CLASS(LMG_03_F,LMG_03_base_F);
	HIDE_CLASS(arifle_SPAR_01_blk_F,arifle_SPAR_01_base_F);
	HIDE_CLASS(arifle_SPAR_01_khk_F,arifle_SPAR_01_base_F);
	HIDE_CLASS(arifle_SPAR_01_snd_F,arifle_SPAR_01_base_F);
	HIDE_CLASS(arifle_SPAR_01_GL_blk_F,arifle_SPAR_01_GL_base_F);
	HIDE_CLASS(arifle_SPAR_01_GL_khk_F,arifle_SPAR_01_GL_base_F);
	HIDE_CLASS(arifle_SPAR_01_GL_snd_F,arifle_SPAR_01_GL_base_F);
	HIDE_CLASS(arifle_SPAR_02_blk_F,arifle_SPAR_02_base_F);
	HIDE_CLASS(arifle_SPAR_02_khk_F,arifle_SPAR_02_base_F);
	HIDE_CLASS(arifle_SPAR_02_snd_F,arifle_SPAR_02_base_F);
	HIDE_CLASS(arifle_SPAR_03_blk_F,arifle_SPAR_03_base_F);
	HIDE_CLASS(arifle_SPAR_03_khk_F,arifle_SPAR_03_base_F);
	HIDE_CLASS(arifle_SPAR_03_snd_F,arifle_SPAR_03_base_F);
	HIDE_CLASS(srifle_DMR_06_hunter_F,DMR_06_hunter_base_F);
	HIDE_CLASS(srifle_DMR_06_camo_F,DMR_06_base_F);
	HIDE_CLASS(srifle_DMR_06_olive_F,srifle_DMR_06_camo_F);

	class Pistol_Base_F;
	HIDE_CLASS(hgun_Pistol_01_F,Pistol_Base_F);

	class Launcher_Base_F;
	HIDE_CLASS(launch_RPG7_F,Launcher_Base_F);

	class LMG_Zafir_F;
	class GVAR(Negev_NG5): LMG_Zafir_F {
		displayName = "Negev NG5";
		descriptionShort = "Light Machine Gun<br />Caliber: 5.56x45 mm";

		baseWeapon = QGVAR(Negev_NG5);

		recoil = "recoil_lim";

		magazineWell[] = {"CBA_556x45_MINIMI"};
		magazines[] = {
			"200Rnd_556x45_Box_F",
			"200Rnd_556x45_Box_Red_F",
			"200Rnd_556x45_Box_Tracer_F",
			"200Rnd_556x45_Box_Tracer_Red_F",

			"CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
			"CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch",
			"CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
			"CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch",
			"CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
			"CUP_100Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_100Rnd_TE4_Red_Tracer_556x45_M249",
			"CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1",
			"CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",
			"CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1",

			"CUP_35Rnd_556x45_Galil_Mag",
			"CUP_35Rnd_556x45_Red_Tracer_Galil_Mag",
			"CUP_35Rnd_556x45_Green_Tracer_Galil_Mag",
			"CUP_50Rnd_556x45_Galil_Mag",
			"CUP_50Rnd_556x45_Red_Tracer_Galil_Mag",
			"CUP_50Rnd_556x45_Green_Tracer_Galil_Mag"
		};
	};
};
