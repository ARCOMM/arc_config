[
	QGVAR(spotlight),
	"LIST",
	["Main Menu Spotlight", "What main menu spotlight graphics will be displayed"],
	"ARCOMM Config",
	[
		[ "Random", "Logo", "Clips" ],
		[ "Random", "Logo", "Clips" ],
		0
	],
	false,
	{
		if(_this == "Random") then {
			profileNamespace setVariable [QGVAR(spotlight), selectRandom ["Logo", "Clips"]];
		} else {
			profileNamespace setVariable [QGVAR(spotlight), _this];
		};
	},
	false
] call CBA_fnc_addSetting;

[
	QGVAR(port),
	"EDITBOX",
	["Server Port", "What server port to join through the main menu spotlight"],
	"ARCOMM Config",
	"2302",
	false,
	{
		profileNamespace setVariable[QGVAR(port), _this];
	},
	false
] call CBA_fnc_addSetting;
