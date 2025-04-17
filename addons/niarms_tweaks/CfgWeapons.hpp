class CfgWeapons {
    class Rifle;
    class Rifle_Base_F : Rifle {
        class WeaponSlotsInfo;
    };

    class HLC_wp_M134Painless : Rifle_Base_F {
        class WeaponSlotsInfo : WeaponSlotsInfo {
            mass = 350; // originall 150, which is 15 lbs, way too light
        };

        ace_overheating_barrelMass = 300; // normal assumed value is 55% of weapon mass, 192.5 in the case of mass = 350. Originally would've been 82.5 based on the original mass of 150.
        ace_overheating_closedBolt = 0; // 0 is open bolt. Releasing the trigger disconnects the delinker mechanism and any rounds that got past the delinker are fired so there are never rounds left in the chambers.
    };
};
