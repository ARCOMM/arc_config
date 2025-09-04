
if (!isServer) exitWith {};

//This module allows radio operators call in mortar or artillery fire missions using the Ace interation menu.
//The radio operator requires an ACRE AN/PRC-77 radio in their Backpack. Vehicle radios or other portable radios will not work.
//They will be able to call fire missions on up to six pre-sighted targets based on markers placed by the mission maker.
//Additionally, they will be able to call fire missions on any target that they can see in the middle of their screen.

// Note - No units or objects are required for this module except the radio operator.
// All other units or objects (mortars, artillery, etc.) are virtual.

//TARGETS
    // Set pre-sighted targets for each side.
    // Each target MUST be the variable name of a marker you have placed in the mission
    // If you wish to use less than 6 targets, leave the unused targets with an empty string, ei. GVAR(target06) = "";
    // See https://gyazo.com/d66a1b6559f60e0fcf969165c93efeeb for an example

    //Examples:
    //GVAR(target01West) = "marker_1";
    //GVAR(target02West) = "marker_12";
    //GVAR(target03West) = "marker_5";

    // West/Blufor
    GVAR(target01West) = "";
    GVAR(target02West) = "";
    GVAR(target03West) = "";
    GVAR(target04West) = "";
    GVAR(target05West) = "";
    GVAR(target06West) = "";

    // East/Opfor
    GVAR(target01East) = "";
    GVAR(target02East) = "";
    GVAR(target03East) = "";
    GVAR(target04East) = "";
    GVAR(target05East) = "";
    GVAR(target06East) = "";

    // Resistance/Independent/Indfor
    GVAR(target01Guer) = "";
    GVAR(target02Guer) = "";
    GVAR(target03Guer) = "";
    GVAR(target04Guer) = "";
    GVAR(target05Guer) = "";
    GVAR(target06Guer) = "";

    // Zeus
    GVAR(target01Zeus) = "";
    GVAR(target02Zeus) = "";
    GVAR(target03Zeus) = "";
    GVAR(target04Zeus) = "";
    GVAR(target05Zeus) = "";
    GVAR(target06Zeus) = "";

//TARGET NAMES
    // These are now automatically taken from the marker text set in the editor.
    // So make sure you name your markers appropriately.

// BATTERY SIZE
    // Sets, per side, the number of guns in the supporting battery.
    // Higher number means more shells landing per volley.
    // So for a value of 5, if 10 rounds are fired then they will arrive in 2 volleys.
    // Must not be lower than 1 or greater than 25.
    GVAR(batterySizeWest) = 5;
    GVAR(batterySizeEast) = 5;
    GVAR(batterySizeGuer) = 5;
    GVAR(batterySizeZeus) = 5;

// AMMUNITION TYPE
    // There are three types of ammunition available, High Explosive, Smoke, and Flare.
    // By default these are mortar shells, but you can change the classNames (Type) to some other kind of ammo if desired.

    // They must be a CfgAmmo class.
    // I recommend not changing the Smoke or Flare classes.

    // Make sure to test whatever className you pick. Not all of them will work.

    // Suggested Classes
        // Mortar HE:       Sh_82mm_AMOS
        // Artillery HE:    Sh_155mm_AMOS

    // West/Blufor
    GVAR(shellsHE_TypeWest) = "Sh_82mm_AMOS";
    GVAR(shellsSmoke_TypeWest) = "Smoke_82mm_AMOS_White";
    GVAR(shellsFlare_TypeWest) = "Flare_82mm_AMOS_White";

    // East/Opfor
    GVAR(shellsHE_TypeEast) = "Sh_82mm_AMOS";
    GVAR(shellsSmoke_TypeEast) = "Smoke_82mm_AMOS_White";
    GVAR(shellsFlare_TypeEast) = "Flare_82mm_AMOS_White";

    // Resistance/Independent/Indfor
    GVAR(shellsHE_TypeGuer) = "Sh_82mm_AMOS";
    GVAR(shellsSmoke_TypeGuer) = "Smoke_82mm_AMOS_White";
    GVAR(shellsFlare_TypeGuer) = "Flare_82mm_AMOS_White";

    // ZEUS
    GVAR(shellsHE_TypeZeus) = "Sh_82mm_AMOS";
    GVAR(shellsSmoke_TypeZeus) = "Smoke_82mm_AMOS_White";
    GVAR(shellsFlare_TypeZeus) = "Flare_82mm_AMOS_White";

// AMMUNITION AMOUNT
    // This allows you to set the amount of ammunition available to each side.
    // Note that HE and Smoke rounds are always fired in volleys of 5.
    // If fewer than 5 rounds are available for those types then no interaction for that ammo will show up.

    // West/Blufor
    GVAR(shellsHE_AmmoCountWest) = 0;
    GVAR(shellsSmoke_AmmoCountWest) = 0;
    GVAR(shellsFlare_AmmoCountWest) = 0;

    // East/Opfor
    GVAR(shellsHE_AmmoCountEast) = 0;
    GVAR(shellsSmoke_AmmoCountEast) = 0;
    GVAR(shellsFlare_AmmoCountEast) = 0;

    // Resistance/Independent/Indfor
    GVAR(shellsHE_AmmoCountGuer) = 0;
    GVAR(shellsSmoke_AmmoCountGuer) = 0;
    GVAR(shellsFlare_AmmoCountGuer) = 0;

    // Zeus
    // Zeus has unlimited ammo

// FIRE MISSION ACCURACY
    // Sets, per side, how close to the target the fire mission impact area be in metres, using RNG.
    // Accuracy will always be perfect for Zeus
    // Higher number means less accurate.
    // 0 means the fire mission will always be centered directly on target.
    // 100 means the fire mission could be centered up to 100m away.
    // This should be adjusted based on the the skill of the units who would be doing the shooting
    // as well as the distance from the shooters to the target
    // I would say 50 is very good, 100 is normal, 150 is bad.
    GVAR(shellAccuracyWest) = 100;
    GVAR(shellAccuracyEast) = 100;
    GVAR(shellAccuracyGuer) = 100;
    // Zeus has perfect accuracy

// FIRE MISSION DISPERSION
    // Sets, per side, the maximum distance (in metres) a shell can land from the centre of the impact area, using RNG.
    // Higher number means more dispersion.
    // 0 means the shells will all land exactly in the centre.
    // 100 means that no shell will land farther than 100m from the centre.
    // This should be adjusted based on the type of weapon that is supposed to be shooting and the distance they are shooting from.
    // Nearby mortars will be more accurate than distant artillery, and rocket artillery will be the least accurate
    // For mortars I would say 50 - exceptionally accurate, 100 - normal, and 150 - inaccurate
    // For artillery I would say 100 - exceptionally accurate, 200 - normal, and 300 - inaccurate
    // For rocket artillery I would say 200 - exceptionally accurate, 300 - normal, and 400 - inaccurate
    GVAR(shellDispersionWest) = 100;
    GVAR(shellDispersionEast) = 100;
    GVAR(shellDispersionGuer) = 100;
    GVAR(shellDispersionZeus) = 100;
