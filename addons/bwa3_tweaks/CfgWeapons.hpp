class CfgWeapons {
    class Launcher_Base_F;
    class Pistol_Base_F;
    class Rifle_Base_F;
    class Rifle_Long_Base_F;
    class Rifle_Short_Base_F;

    class BWA3_CarlGustav : Launcher_Base_F {
        magazineWell[] += {"CBA_Carl_Gustaf"};
    };

    class BWA3_G28 : Rifle_Long_Base_F {
        ace_overheating_closedBolt = 1;
        magazineWell[] += {"CBA_762x51_AR10", "CBA_762x51_AR10_L","CBA_762x51_AR10_XL"};
    };

    class BWA3_G29 : Rifle_Long_Base_F {
        ace_overheating_closedBolt = 1;
        magazineWell[] += {"CBA_338LM_RS9"};
    };

    class BWA3_G36A1 : Rifle_Base_F {
        magazineWell[] += {"CBA_556x45_STANAG","CBA_556x45_STANAG_L","CBA_556x45_STANAG_XL","CBA_556x45_STANAG_2D","CBA_556x45_STANAG_2D_XL"};
    };

    class BWA3_G38 : Rifle_Base_F {
        magazineWell[] += {"CBA_556x45_STANAG","CBA_556x45_STANAG_L","CBA_556x45_STANAG_XL","CBA_556x45_STANAG_2D","CBA_556x45_STANAG_2D_XL"};
    };

    class BWA3_G82 : Rifle_Long_Base_F {
        ace_overheating_closedBolt = 1;
        magazineWell[] += {"CBA_50BMG_M107"};
    };

    class BWA3_MG3 : Rifle_Long_Base_F {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };

    class BWA3_MG4 : Rifle_Long_Base_F {
        magazineWell[] += {"CBA_556x45_MINIMI"};
    };

    class BWA3_MG5 : Rifle_Long_Base_F {
        magazineWell[] += {"CBA_762x51_LINKS"};
    };

    class BWA3_MP7 : Rifle_Short_Base_F {
        magazineWell[] += {"CBA_46x30_MP7"};
    };

    class BWA3_P8 : Pistol_Base_F {
        magazineWell[] += {"CBA_9x19_USP"};
    };

    class BWA3_P12 : Pistol_Base_F {
        magazineWell[] += {"CBA_45ACP_USP"};
    };
};
