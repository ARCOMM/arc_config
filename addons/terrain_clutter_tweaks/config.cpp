#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_cfg_main",
            "arc_cfg_a3_tweaks",
            "A3_Map_Altis",
            "A3_Map_Data",
            "A3_Map_Enoch",
            "A3_Map_Stratis",
            "A3_Map_Tanoabuka",
            "A3_Map_Tembelan",
            "Bozcaada",
            "brf_sumava",
            "clafghan",
            "CUP_Bohemia_Config",
            "CUP_CA_QGClutterHotfix",
            "CUP_Chernarus_A3_Config",
            "CUP_Chernarus_Config",
            "CUP_Chernarus_Winter_Config",
            "CUP_Hotfix_Config",
            "CUP_Provinggrounds_pmc_Config",
            "CUP_Sara_Config",
            "CUP_Shapur_baf_Config",
            "CUP_Takistan_Config",
            "CUP_Utes_Config",
            "CUP_Worlds_Seabed",
            "CUP_Zargabad_A3_c",
            "CUP_Zargabad_Config",
            "drakovac",
            "fallujah_v1_0",
            "fata",
            "GO_Map_Farabad_Data",
            "GO_Map_Fjord",
            "GOT_Map_IslaPera",
            "Kidal",
            "kunduz_river",
            "MCN_Aliabad",
            "pja305",
            "pja314",
            "pulau",
            "Ruha",
            "tem_anizay",
            "tem_kujari",
            "tem_summa",
            "tem_summawcup",
            "tem_suursaariv",
            "tem_vinjesvingenc",
            "Thirsk",
            "ThirskW",
            "UMB_Colombia",
            "vt7",
            "VTF_Lybor_Config",
            "VTF_Lybor_Winter_Config",
            "WL_Rosche"
        };
        author = ARC_AUTHOR;
        VERSION_CONFIG;

        skipWhenMissingDependencies = 1;
    };
};

/*
//Code to dyump config, requires ConfigDumpFileIO_x64.dll and a custom config export mission
[
    configFile >> "CfgWorlds",
    true,
    true,
    true,
    true,
    ["scaleMin","scaleMax"],
    true,
    true,
    true,
    false,
    true,
    false,
    1e10,
    "CfgWorlds Clutter",
    true
] call compile preprocessFileLineNumbers "dumpConfig.sqf";


//Regex for config dump
scaleMin = 0.75*(.+);
scaleMin = 0.75*(1/3)*$1;

scaleMax = 0.9*(.+);
scaleMax = 0.9*0.5*$1;

//Code to get required addons
private _terrains = "true" configClasses (configFile >> "CfgWorlds");
private _requiredAddons = [];
{
    private _cfgPatchesList = configSourceAddonList (_x >> "Clutter");
    {
        _requiredAddons pushBackUnique _x
    } forEach _cfgPatchesList;
} forEach _terrains;
_requiredAddons arrayIntersect _requiredAddons;
_requiredAddons sort true;
["arc_cfg_main","arc_cfg_a3_tweaks"] + _requiredAddons
*/

#include "CfgWorlds.hpp"
