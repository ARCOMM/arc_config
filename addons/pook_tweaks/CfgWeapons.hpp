class CfgWeapons {
    class CUP_glaunch_Mk13;
    class pook_GL_RGM40_Pistol;
    class pook_GL_Flare_Pistol;
    class ItemCore;
    HIDE_CLASS(pook_GL_GM94,CUP_glaunch_Mk13);
    HIDE_CLASS(pook_GL_GM94_Pistol,pook_GL_RGM40_Pistol);
    HIDE_CLASS(pook_GL_shotgun,pook_GL_Flare_Pistol);
    HIDE_CLASS(pook_pilot_shoulderholster,ItemCore);

    class MGun;
    class pook_M60_side : MGun { //also fixes pook_M60_dual
        modes[] = {"manual","close","short","medium","far"};
    };

    /*
    // These changes may help prevent the errors that pop up with this vest, but they do not give the vest a proper texture, HIDE_CLASS is recommended instead, as used above.
    class VestItem;
    class ItemCore;
    class pook_pilot_shoulderholster : ItemCore {
        model = "\pook_h13\pook_H13\data\uniforms\shoulderholster.p3d";
        hiddenSelectionsTextures[] = {"\pook_h13\pook_H13\data\uniforms\medic.paa"};
        class ItemInfo : VestItem {
            uniformModel = "\pook_h13\pook_H13\data\uniforms\shoulderholster.p3d";
        };
    };
    */
};
