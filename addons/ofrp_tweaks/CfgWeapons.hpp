class CfgWeapons {
    class Pistol_Base_F;
    class Rifle_Base_F;
    class Rifle_Long_Base_F;
    class GM6_base_F;

    class OFrP_PAMAS: Pistol_Base_F {
        magazineWell[] = {"CBA_9x19_M9"};
    };

    class OFrP_Glock17_Gen4: Pistol_Base_F {
        magazineWell[] = {"CBA_9x19_M9"};
    };

    class OFrP_FAMAS_F1_base;
    class OFrP_FAMAS_F1: OFrP_FAMAS_F1_base {
        magazineWell[] = {"CBA_556x45_FAMAS","OFrP_Rifle_Grenades"};
    };

    class OFrP_FAMAS_FELIN_base;
    class OFrP_FAMAS_FELIN: OFrP_FAMAS_FELIN_base {
        magazineWell[] = {"CBA_556x45_FAMAS","OFrP_Rifle_Grenades"};
    };

    class OFrP_FAMAS_VAL_base;
    class OFrP_FAMAS_VAL: OFrP_FAMAS_VAL_base {
        magazineWell[] = {"CBA_556x45_FAMAS","OFrP_Rifle_Grenades"};
    };

    class OFrP_HK416F_S_base: Rifle_Base_F {
        magazineWell[] = {"CBA_556x45_STANAG","STANAG_556x45","OFrP_Rifle_Grenades"};
    };

    class OFrP_HK416F_C_base: OFrP_HK416F_S_base {
        magazineWell[] = {"CBA_556x45_STANAG","STANAG_556x45"};
    };

    class OFrP_Minimi_556_base;
    class OFrP_Minimi_Para_556: OFrP_Minimi_556_base {
        magazineWell[] = {"CBA_556x45_MINIMI","CBA_556x45_STANAG","STANAG_556x45"};
    };

    class OFrP_Minimi_Para_556_HG01: OFrP_Minimi_Para_556 {
        magazineWell[] = {"CBA_556x45_MINIMI","CBA_556x45_STANAG","STANAG_556x45"};
    };

    class OFrP_Minimi_762_base: OFrP_Minimi_556_base {
        magazineWell[] = {"CBA_762x51_LINKS"};
    };

    class OFrP_AANF1_FM_base: Rifle_Long_Base_F {
        magazineWell[] = {"CBA_762x51_LINKS"};
    };

    class OFrP_FRF2_base: Rifle_Long_Base_F {
        magazineWell[] = {"CBA_762x51_FRF2"};
    };

    class OFrP_HK417_base: Rifle_Base_F {
        magazineWell[] = {"CBA_762x51_HK417"};
    };

    class OFrP_PGM_Hecate2_Base: GM6_base_F {
        magazineWell[] = {"CBA_762x51_HK417"};
    };
};
