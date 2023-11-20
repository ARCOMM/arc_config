/* CWR III */
/* Disables CWR3's custom logo override. */
force force cwr3_intro_customLogo = false;
/* Disables CWR3's deletion of the three big menu buttons. */
force force cwr3_intro_disableSpotlight = false;

/* A3TI */
/* Enables A3TI for the ACE javelin launcher. */
force A3TI_ACE_JAVELIN = true;
/* Allows tank drivers to use A3TI if their viewports have thermal capabilities. */
force A3TI_ALLOW_TANK_DRIVER = false;
/* Keeps vanilla thermals an option. */
force A3TI_ALLOW_VANILLA_TI = true;
/* Enables A3TI for Zeus. */
force A3TI_ENABLE_ZEUS = true;
/* Thse four remove thermal camera blur from certain vehicle classes. */
force A3TI_HD_VISION_FIGHTER = true;
force A3TI_HD_VISION_LANDVEH = false;
force A3TI_HD_VISION_SHIP = true;
force A3TI_HD_VISION_UAV = true;
/* Disables RHS's own filmgrain effect so they don't stack. */
force A3TI_REMOVE_FILMGRAIN_RHS = true;

/* ACE3 Advanced Ballistics */
force ace_advanced_ballistics_enabled = true;
/* Have ammunication temerature affect ballistics. */
force ace_advanced_ballistics_ammoTemperatureEnabled = false;
/* Have a weapon's barrel length influence the flight path. */
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
/* Enables a trailing visual effect for sufficiently large projectiles. */
force ace_advanced_ballistics_bulletTraceEnabled = true;
/* Enables a slight randomization of muzzle velocity. */
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = false;
/* How often to resimulate projectiles in seconds. Range: 0 (every frame) to 0.2 */
force ace_advanced_ballistics_simulationInterval = 0.05;

/* ACE Advanced Fatigue */
force ace_advanced_fatigue_enabled = true;
/* Shows the stamina bar. */
force ace_advanced_fatigue_enableStaminaBar = true;
/* Multiplier to the effect of gear mass on player stamina. */
force ace_advanced_fatigue_loadFactor = 0.9;
/* Multiplier on unit fitness: 35 + 20 * performanceFactor */
force ace_advanced_fatigue_performanceFactor = 1;
/*
 * Multiplier on how fast units recover stamina...
 * ... Or at least I think. It's used in a rat's nest of far too complicated code for what it does. Technically it affects the "Anaerobic ATP Reserves Recovery", if that means something to you.
 */
force ace_advanced_fatigue_recoveryFactor = 2.2;
/* General multiplier on how much weapons sway. More specific settings are available in 'restedSwayFactor', and 'deployedSwayFactor'. */
force ace_advanced_fatigue_swayFactor = 1;
/* Multiplier on the effect of terrain steepness on player stamina. */
force ace_advanced_fatigue_terrainGradientFactor = 1;

/* ACE Advanced Throwing */
force ace_advanced_throwing_enabled = true;
/* Allows players to pick up throwables after they were thrown. */
force ace_advanced_throwing_enablePickUp = true;
/* Allows players to pick up throwables after they were attached to an object. */
force ace_advanced_throwing_enablePickUpAttached = true;

/* ACE Arsenal */
/* Allows players to access the default loadouts. */
force ace_arsenal_allowDefaultLoadouts = true;
/* Allows players to access loadouts shared by other players. */
force ace_arsenal_allowSharedLoadouts = true;
/* Allows players to access the "Identity" tabs: Faces, voices, and insignias. */
force ace_arsenal_enableIdentityTabs = true;

/* ACE Artillery Tables */
/* Enables advanced ballistics for player-fired artillery shells. */
force ace_artillerytables_advancedCorrections = true;
/* Disables the vanilla artillery computer. */
force ace_artillerytables_disableArtilleryComputer = true;

/* ACE Mk6 Mortar */
/* Legacy setting, must always be true for Artillery Tables to work. */
force ace_mk6mortar_airResistanceEnabled = true;
/* Shows the digital compass in the Mk6 mortar. */
force ace_mk6mortar_allowCompass = true;
/* Legacy setting, must always be false for Artillery Tables to work. */
force ace_mk6mortar_allowComputerRangefinder = false;
/* Requires CSW ammunition handling for the Mk6 mortar. Otherwise the vanilla ammunition system remains in place. */
force ace_mk6mortar_useAmmoHandling = true;

/* ACE Captives */
/* Allows players to handcuff units of their own side. */
force ace_captives_allowHandcuffOwnSide = true;
/* Allows players to surrender through an ACE Self Interact option. */
force ace_captives_allowSurrender = true;
/*
 * The conditions under which handcuffs can be applied to units:
 * 0 - Can by done at any time.
 * 1 - Only when the unit has intentionally surrendered.
 * 2 - When surrendering or when they don't have a weapon.
 * Note: These settings do not apply to units of one's own side if 'allowHandcuffOwnSide' is true or the unit is unconscious.
 */
force ace_captives_requireSurrender = 2;
/* Shortcut to the above check, enables AI to be handcuffed evem if it would not be valid for players. */
force ace_captives_requireSurrenderAi = false;

/* ACE Common */
/* Causes ACE to also lower music volume when adjusting hearing volume. */
force force ace_common_allowFadeMusic = true;
/*
 * Sets the response to a PBO check error, for example when additional mods are loaded:
 * 0 - Warn the player on joining the server.
 * 1 - Constantly keep the warning on screen.
 * 2 - Kick the player from the server.
 */
force force ace_common_checkPBOsAction = 2;
/* Enables the CheckPBO mechanism, if this is false there should be a backup for just ACE but it appears defunct. */
force force ace_common_checkPBOsCheckAll = true;
/* The list of mods that are allowed but not required. Generated from 'optional_mods.txt', do not edit it here. */
force force ace_common_checkPBOsWhitelist = "%OPTIONAL_MODS%";

/* ACE No Radio */
/* Disables ArmA's native VOIP system. */
force ace_noradio_enabled = true;

/* ACE Parachute */
/* Removes ArmA's automatic altimeter while on a parachute. */
force ace_parachute_hideAltimeter = false;

/* ACE Cookoff (the hit cooking show) */
/*
 * Enables the cookoff system:
 * 0 - Disabled
 * 1 - Only for vehicles that contain at least one player
 * 2 - Enabled for everyone
 */
force ace_cookoff_enable = 2;
/* Multiplier on how long cookoff lasts. */
force ace_cookoff_ammoCookoffDuration = 1;
/* Enables cookoff for ammunition boxes. Do note that it detects ammoboxes as everything inheriting from 'ReammoBox_F', so it may not catch everything. */
force ace_cookoff_enableAmmobox = true;
/* Allows ammunition to be flung from a burning vehicle. */
force ace_cookoff_enableAmmoCookoff = true;
/* Multiplier on how likely it is that cookoff occurs. */
force ace_cookoff_probabilityCoef = 1;

/* ACE Crew Served Weapons */
/*
 * Enables the csw system
 * 0 - Disabled
 * 1 - Only for players
 * 2 - Enabled for everyone
 */
force ace_csw_ammoHandling = 1;
/* Set whether weapons should use ACE CSW by default. */
force ace_csw_defaultAssemblyMode = true;
/* Spawns extra magazines by weapons using CSW at mission start. */
force ace_csw_handleExtraMagazines = true;
/* Multiplier on how long everything takes in CSW. No finer options are available. 0.075 is considered "fast". */
force ace_csw_progressBarTimeCoefficent = 1;

/* ACE Explosives */
/* Allows explosives which have a explodeOnDefuseChance configured to explode according to that chance, even when defused. */
force ace_explosives_explodeOnDefuse = false;
/* Makes non-specialists slower at doing various activities by adding 50% on top of the defuse time. Does not affect the explode on defuse chance. */
force ace_explosives_punishNonSpecialists = true;
/* Whether specialists are required to defuse explosives. */
force ace_explosives_requireSpecialist = false;

/* ACE Fragmentation Simulation */
/* Enables the whole system. */
force ace_frag_enabled = true;
/* The number of explosives in the air before that the system can handle at once. Weapons fired beyond this are not affected by this system. */
force ace_frag_maxTrack = 20;
/* Number of explosives that are calculated per frame to spread the load over multiple frames. */
force ace_frag_maxTrackPerFrame = 10;
/* Allows fragments to bounce. */
force ace_frag_reflectionsEnabled = true;
/* Whether to create fragmentation from sufficiently large non-explosive impacts. */
force ace_frag_spallEnabled = true;

/* ACE G-Forces */
/*
 * Enables the system:
 * 0 - Disabled
 * 1 - Only for players
 * 2 - For everyone
 */
force ace_gforces_enabledFor = 1;
/* Multiplier on G-Forces applied to units. Note that pilot units already have their coefficient reduced to 0.55, so this may be irrelevant. */
force ace_gforces_coef = 0.5;

/* ACE Goggles */
/*
 * The effects that can be applied to goggles:
 * 0 - None, system disabled.
 * 1 - Tinting according to goggle color
 * 2 - Tinting and effects.
 * 3 - Only effects.
 */
force ace_goggles_effects = 3;
/* Allow players to wipe their goggles. This clears all effects, including broken glasses. */
force ace_goggles_showClearGlasses = true;

/* ACE Grenades */
/* Allow players to change certain placable explosives into grenades. */
force ace_grenades_convertExplosives = true;

/* ACE Hearing */
/* Automatically add earplugs to units that have a "big rifle". */
force ace_hearing_autoAddEarplugsToUnits = false;
/* Enables ear ringing sound effect. */
force ace_hearing_disableEarRinging = true;
/* The volume earplugs lower hearing to. 0-1 */
force ace_hearing_earplugsVolume = 0.5;
/* Makes players go deaf over time as loud weapons are fired near to them. */
force ace_hearing_enableCombatDeafness = false;
/* Enables zeus-controlled units to go deaf over time as well. */
force ace_hearing_enabledForZeusUnits = false;
/* The volume players hear when unconscious. */
force ace_hearing_unconsciousnessVolume = 0.4;

/* ACE Interaction */
/* Stops players from receiving negative ratings, meaning that they will never become renegade. */
force ace_interaction_disableNegativeRating = false;
/* Allows team management through ACE interaction options. */
force ace_interaction_enableTeamManagement = true;
/* Allows the team leader to change the name of their group through an ACE interaction option. */
force ace_interaction_enableGroupRenaming = false;

/* ACE Logistics */
/* Enables the ACE cargo system. */
force ace_cargo_enable = true;
/* Multipler on how long it takes to load/unload cargo. */
force ace_cargo_loadTimeCoefficient = 2.5;
/* Multiplier on how long it takes to paradrop an item. */
force ace_cargo_paradropTimeCoefficent = 2.5;

/* ACE Rearm */
/* How far away from the ammunition box vehicles can be while the rearm actions still appear. */
force ace_rearm_distance = 35;
/*
 * How rearm is done:
 * 0 - A single action rearms the entire vehicle.
 * 1 - One magazine is loaded per action.
 * 2 - Partial magazines may be loaded, depending on the type (tank shells are single loaded.)
 */
force ace_rearm_level = 1;
/*
 * How supply is limited:
 * 0 - Infinite supply.
 * 1 - Supplies are limited by points.
 * 2 - Supply is managed as specific magazines.
 */
force ace_rearm_supply = 1;
/* Maximum length of hoses in meters. */
force ace_refuel_hoseLength = 12;
/* Multiplier on refueling time. */
force ace_refuel_rate = 1;
/* Whether to automatically add spare wheels/tracks depending on the vehicle at mission start. */
force ace_repair_addSpareParts = true;
/* Automatically shut off the engine when starting to repair a vehicle. */
force ace_repair_autoShutOffEngineWhenStartingRepair = false;
/* How many toolkits to consume during a repair operation. */
force ace_repair_consumeItem_toolKit = 0;
/*
 * These set what rank of engineer is required to perform certain operations:
 * 0 - Base level.
 * 1 - Engineer.
 * 2 - Advanced Engineer.
 */
force ace_repair_engineerSetting_fullRepair = 2;
force ace_repair_engineerSetting_repair = 1;
force ace_repair_engineerSetting_wheel = 0;
/*
 * What is required for a full repair:
 * "All"   - Always allowed.
 * "field" - Always allowed.
 * 0       - Always allowed.
 * 1       - Near repair vehicle.
 * 2       - Near repair facility.
 * 3       - Near repair vehicle or facility.
 */
force ace_repair_fullRepairLocation = 3;
/* Items required for a full repair. */
force ace_repair_fullRepairRequiredItems = ["ToolKit"];
/* Items required for any other repair. */
force ace_repair_miscRepairRequiredItems = ["ToolKit"];
/* Tools required to repair a wheel, other than the wheel itself. */
force ace_repair_wheelRepairRequiredItems = [];
/* The minimum damage anyone can repair a part to. */
force ace_repair_repairDamageThreshold = 0.6;
/* The minimum damage an engineer (1, or 2) can repair a part to. */
force ace_repair_repairDamageThreshold_engineer = 0.4;

/* ACE Magazine Repack */
/*
 * These all configure how long repacking takes in seconds:
 * All the bullets or belts are added up and multiplied by their respective multiplier. Then the number of magazines is added similarly multiplied. This means that each belt takes timePerBeltLink + timePerMagazine seconds.
 */
force ace_magazinerepack_timePerAmmo = 1.5;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 2;

/* ACE Map */
/* Enables the ACE blue force tracker. */
force ace_map_BFT_Enabled = false;
/* Hide markers for groups that only contain AI. */
force ace_map_BFT_HideAiGroups = false;
/* Seconds between BFT updates. */
force ace_map_BFT_Interval = 1;
/* Show player names on the map. */
force ace_map_BFT_ShowPlayerNames = false;
/*
 * On what channel to display every player starts:
 * 0    - Global
 * 1    - Side
 * 2    - Command
 * 3    - Group
 * 4    - Vehicle
 * 5    - Direct
 * 6-15 - Custom
 */
force ace_map_DefaultChannel = 1;
/* Whether players that are using a flashlight on their map also emit light in the real world. */
force ace_map_mapGlow = true;
/* Whether the map is illuminated by ambient lights. */
force ace_map_mapIllumination = true;
/* Limit the map zoom so that the map is never smaller than a sixth level grid. */
force ace_map_mapLimitZoom = false;
/* Whether the map shakes while walking. */
force ace_map_mapShake = true;
/* Draws the coordinates of the cursor at the cursor. */
force ace_map_mapShowCursorCoordinates = false;

/* ACE Map Gestures */
/* Limited to the little yellow dot. */
force ace_map_gestures_enabled = true;
/* How often in seconds the dot is updated. */
force ace_map_gestures_interval = 0.03;
/* Maximum distance in meters you can see player gestures from. */
force ace_map_gestures_maxRange = 12;
/* Maximum distance in meters from the camera you can see player gestures from. */
force ace_map_gestures_maxRangeCamera = 14;
/* Only show dots for people on your side. */
force ace_map_gestures_onlyShowFriendlys = false;

/* ACE Map Tools */
/* Whether the cursor is prevented from moving through the drawing edge of the maptool. */
force ace_maptools_drawStraightLines = false;

/* ACE Medical */
/*
 * Which AI are allowed to heal themselves:
 * 0 - Disabled
 * 1 - Only for AI which are run by headless clients.
 * 2 - All AI.
 */
force ace_medical_ai_enabledFor = 2;
/* The amount of damage an AI can take before dying or going unconscous. Default 0.2 */
force ace_medical_AIDamageThreshold = 1;
/* The amount of damage a player can take before dying or going unconscious. Default 1.0 */
force ace_medical_playerDamageThreshold = 1;
/* Multiplier on bleeding speed. */
force ace_medical_bleedingCoefficient = 1;
/* How long blood effects last on the ground. */
force ace_medical_blood_bloodLifetime = 900;
/*
 * Who generates blood effect:
 * 0 - Disabled
 * 1 - Only players
 * 2 - Everyone
 */
force ace_medical_blood_enabledFor = 2;
/* Maximum number of blood effects that can exist at once. */
force ace_medical_blood_maxBloodObjects = 500;
/*
 * What damage can be immediately fatal:
 * 0 - Only the head and organs.
 * 1 - Only sum of damage can be fatal.
 * 2 - Head/Organ damage and sum of damage can be fatal.
 * 3 - No fatal damage.
 */
force ace_medical_fatalDamageSource = 0;
/* Cance of a sufficiently powerful wound to cause a fracture. */
force ace_medical_fractureChance = 0.8;
/*
 * What splints do:
 * 0 - Nothing
 * 1 - Full heal
 * 2 - No sprinting on a splint
 * 3 - Only walking on a split
 */
force ace_medical_fractures = 1;
/* How far away one can use the medical menu. */
force ace_medical_gui_maxDistance = 3;
/* How fast IVs flow in in units of 4.1667ml (!) per second */
force ace_medical_ivFlowRate = 2.5;
/*
 * When to limp:
 * 0 - Never
 * 1 - Limp on open leg wounds
 * 2 - Limp on closed wounds until stitched.
 */
force ace_medical_limping = 1;
/* Multiplier on pain added and removed. */
force ace_medical_painCoefficient = 1;
/* Probability of waking up every fifteen seconds when stable. */
force ace_medical_spontaneousWakeUpChance = 0.5;
/* Divider of the wakeup interval after epinephrine is applied. */
force ace_medical_spontaneousWakeUpEpinephrineBoost = 2;
/* Allow AI to go unconscious. */
force ace_medical_statemachine_AIUnconsciousness = false;
/* Whether one can enter cardiac arrest by loosing enough blood alone. */
force ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
/* Time between the heart stopping and the unit dying. */
force ace_medical_statemachine_cardiacArrestTime = 30;
/*
 * These control the fatal injuries setting for AI and players respectively, the values mean:
 * 0 - Immediately die when receiving a fatal injury.
 * 1 - Go into cardiac arrest.
 * 2 - Nothing of interest happens. 
 */
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 0;
/*
 * How bandages are handled:
 * 0 - All bandages are equal.
 * 1 - Bandages get their special properties.
 * 2 - Bandages are special and wounds reopen until stitched.
 */
force ace_medical_treatment_advancedBandages = 0;
/* Enables a player to get pulse, blood presure and response. When false CPR is only available when the target is in cardiac arrest. */
force ace_medical_treatment_advancedDiagnose = true;
/* Enables the more complete drug system. Also enables Adenosine. */
force ace_medical_treatment_advancedMedication = true;
/* Allows unconscious units to be body bagged. */
force ace_medical_treatment_allowBodyBagUnconscious = false;
/*
 * When grave digging is allowed.
 * 0 - Disabled
 * 1 - Only dead
 * 2 - Always
 */
force ace_medical_treatment_allowGraveDigging = 1;
/* Whether placing grave markers is allowed. */
force ace_medical_treatment_graveDiggingMarker = true;
/* Drops litter items when treating with the respective tools. */
force ace_medical_treatment_allowLitterCreation = true;
/* 
 * These set who can self-administer certain treatments.
 * 0 - Everyone 
 * 1 - Medics
 * 2 - Advanced Medics
 */
force ace_medical_treatment_allowSelfIV = 1;
force ace_medical_treatment_allowSelfPAK = 0;
force ace_medical_treatment_allowSelfStitch = 1;
/*
 * Who's medical equipment is used first when one unit treats another.
 * 0 - Patient first.
 * 1 - Medic first.
 * 2 - Only the medics equipment.
 */
force ace_medical_treatment_allowSharedEquipment = 0;
/*
 * When to clear trauma.
 * 0 - Never
 * 1 - After stitching
 * 2 - After bandaging
 */
force ace_medical_treatment_clearTrauma = 1;
/* Whether PAKs are used up. */
force ace_medical_treatment_consumePAK = 1;
/*
 * What is consumed while stitching:
 * 0 - Nothing is used.
 * 1 - The surgical kit.
 * 2 - The suture.
 */
force ace_medical_treatment_consumeSurgicalKit = 2;
/*
 * What happens when vanilla medical items are detected:
 * 0 - The items are converted to ACE equivalents.
 * 1 - The items are just deleted.
 * 2 - Disabled.
 */
force ace_medical_treatment_convertItems = 0;
/* Minimum and maximum chance of CPR success depending on remaining blood volume. */
force ace_medical_treatment_cprSuccessChanceMin = 0.4;
force ace_medical_treatment_cprSuccessChanceMax = 0.4;
/* Whether medical treatments require the gun to be lowered or hostered. */
force ace_medical_treatment_holsterRequired = 0;
/* How long litter items last in seconds, -1 means forever. */
force ace_medical_treatment_litterCleanupDelay = 600;
/*
 * These next couple define where one can use certain treatments:
 * 0 - Everywhere
 * 1 - Medical vehicles
 * 2 - Medical facilities
 * 3 - Medical vehicles and facilities
 * 4 - Nowhere
 */
force ace_medical_treatment_locationEpinephrine = 0;
force ace_medical_treatment_locationPAK = 3;
force ace_medical_treatment_locationIV = 0;
force ace_medical_treatment_locationSurgicalKit = 0;
/* Whether units get boosted to the next level when near a medical vehicles and facilities. */
force ace_medical_treatment_locationsBoostTraining = true;
/* Maximum litter objects before old ones get deleted. */
force ace_medical_treatment_maxLitterObjects = 500;
/*
 * These define who can use certain treatments:
 * 0 - Everyone
 * 1 - Medics and doctors
 */
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 1;
force ace_medical_treatment_medicPAK = 1;
force ace_medical_treatment_medicSurgicalKit = 1;
/* Multiplier on the PAK treatment time. */
force ace_medical_treatment_timeCoefficientPAK = 1;
/*
 * How long certain treatments take by base. Stitching is per wound.
 */
force ace_medical_treatment_treatmentTimeAutoinjector = 5;
force ace_medical_treatment_treatmentTimeBodyBag = 15;
force ace_medical_treatment_treatmentTimeCPR = 15;
force ace_medical_treatment_treatmentTimeIV = 12;
force ace_medical_treatment_treatmentTimeSplint = 7;
force ace_medical_treatment_treatmentTimeTourniquet = 7;
force ace_medical_treatment_woundStitchTime = 5;
/* Multiplier on wound chance. */
force ace_medical_treatment_woundReopenChance = 1;

/* ACE Name Tags */
/* Opaqueness of the name. */
force ace_nametags_playerNamesMaxAlpha = 0.8;
/* Maximum distance at which tags appear. */
force ace_nametags_playerNamesViewDistance = 5;
/* Show the vehicle commander's name when looking at a vehicle. */
force ace_nametags_showCursorTagForVehicles = false;

/* ACE Nightvision */
/* Multiplier on blurring sights while in night vision. */
force ace_nightvision_aimDownSightsBlur = 0.7;
/* Whether NVGs should be disabled when looking down sights. */
force ace_nightvision_disableNVGsWithSights = false;
/* Multiplier on all night vision effects. */
force ace_nightvision_effectScaling = 0.7;
/* Multiplier on NVG fog. */
force ace_nightvision_fogScaling = 0.2;
/* Multiplier on the NVG noise effect. */
force ace_nightvision_noiseScaling = 0.1;

/* ACE Overheating */
force ace_overheating_enabled = true;
/* Makes higher barrel temperatures decrease accuracy. */
force ace_overheating_overheatingDispersion = true;
/* Chance for un-jamming to fail. */
force ace_overheating_unJamFailChance = 0.33;
/* Attempt to unjam on reload. */
force ace_overheating_unJamOnreload = true;

/* ACE Pointing */
force ace_finger_enabled = true;
/* Whether the pointer can also see the point. */
force ace_finger_indicatorForSelf = true;
/* How far away others can be and still see the point. */
force ace_finger_maxRange = 8;
/* Whether the circle gets smaller the further away one is from the pointer. */
force ace_finger_proximityScaling = true;

/* ACE Pylons */
/* Whether Zeus can see the pylons menu. */
force ace_pylons_enabledForZeus = true;
/* Allows one to access the pylons menu an ammo truck. */
force ace_pylons_enabledFromAmmoTrucks = true;
/* Whether new pylons should automatically try to reload from available sources. */
force ace_pylons_rearmNewPylons = false;
/* Whether one has to be an engineer to use the pylons menu. */
force ace_pylons_requireEngineer = true;
/* Whether one needs to have a toolking to use the pylons menu. */
force ace_pylons_requireToolkit = true;
/* How far to search for ammunition sources. */
force ace_pylons_searchDistance = 20;
/* How long rearming takes per pylon in seconds. */
force ace_pylons_timePerPylon = 4.5;

/* ACE Quick Mount */
force ace_quickmount_enabled = true;
/* How far away one can be while still use quick mount. */
force ace_quickmount_distance = 5;
/* Maximum speed the vehicle can be moving. */
force ace_quickmount_speed = 15;

/* ACE Respawn */
/* Delete bodies when the owner is disconnected. */
force ace_respawn_removeDeadBodiesDisconnected = true;
/* Whether to attempt to re-add the pre-death gear. */
force ace_respawn_savePreDeathGear = false;

/* ACE Scopes */
force ace_scopes_enabled = true;
/* Whether zeros are automatically updated for any set advanced ballistics settings. */
force ace_scopes_correctZeroing = true;
/* Whether to be or not to be, that is here the question. */
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = true;
/* Default zero range for advanced scopes. */
force ace_scopes_defaultZeroRange = 200;
/* Forces the use of advanced scoping for all scopes. */
force ace_scopes_forceUseOfAdjustmentTurrets = false;
/* Whether to actually apply corrected zero ranges. */
force ace_scopes_overwriteZeroRange = true;
/* Pretend to be vanilla zeroing, but now with advanced ballistics, because that makes f*cking sense. */
force ace_scopes_simplifiedZeroing = false;
/* Base pressure if you decided not to be. */
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
/* These references can thankfully never be calculated. Althrough you could probably make some funky ballistics if you fiddled with these. */
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

/* ACE Spectator */
/* Whether AI can enter spectator, presumably for AI currently holding player slots due to disconnect. */
force ace_spectator_enableAI = false;
/*
 * Which modes spectators are allowed into.
 * 0 - All
 * 1 - First Person, Third Person
 * 2 - Free
 * 3 - First Person
 * 4 - Third Person
 */
force ace_spectator_restrictModes = 0;
/* What vision modes (NV, TI, ...) are avaialble. I have no clue what does what. But 0 allows everything. */
force ace_spectator_restrictVisions = 0;

/* ACE Switch Units */
force ace_switchunits_enableSwitchUnits = false;
/* Whether a safe zone around enemy forces is taken into account. */
force ace_switchunits_enableSafeZone = false;
/* The radious of the safe zone. */
force ace_switchunits_safeZoneRadius = 100;
/* Whether players are allowed to switch to certain sides: */
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

/* ACE Trenches */
/* The time in seconds it takes to dig and remove these trenches: */
force ace_trenches_bigEnvelopeDigDuration = 25;
force ace_trenches_bigEnvelopeRemoveDuration = 15;
force ace_trenches_smallEnvelopeDigDuration = 20;
force ace_trenches_smallEnvelopeRemoveDuration = 12;

/* ACE Uncategorized */
/* Whether fastroping requires (and uses up) the rope item. */
force ace_fastroping_requireRopeItems = false;
/* Whether a weapon can be swapped into or out of a gunbag. */
force ace_gunbag_swapGunbagEnabled = true;
/* Minimum damage to a leg required to make a unit fall down. */
force ace_hitreactions_minDamageToTrigger = 0.1;
/* The number of rays to shoot while trying to find a laser to lock onto. */
force ace_laser_dispersionCount = 1;
/*
 * Which map data is displayed on the MicroDAGR.
 * 0 - None
 * 1 - Topographic lines and roads.
 * 2 - Sattilite maps.
 */
force ace_microdagr_mapDataAvailable = 2;
/* How many decimal points of precision each waypoint has, measured in kilometres. */
force ace_microdagr_waypointPrecision = 3;
/* Scales overpressure damage. */
force ace_overpressure_distanceCoefficient = 1;

/* ACE User Interface */
/* Whether individual players are allowed to change their own UI settings. */
force ace_ui_allowSelectiveUI = true;
/* Whether players can see their own ammunition count. */
force ace_ui_ammoCount = false;

/* ACE Vehicle Lock */
/* Time to break a lock in seconds. */
force ace_vehiclelock_defaultLockpickStrength = 10;
/* Whether locked vehicles also have their inventories inaccessible. */
force ace_vehiclelock_lockVehicleInventory = true;
/*
 * The initial locked state of vehicles:
 * -1 - no change
 *  0 - Broken Setting
 *  1 - Locked
 *  2 - Unlocked
 */
force ace_vehiclelock_vehicleStartingLockState = -1;

/* ACE Vehicles */
/* Whether the engine should keep running if the driver gets out. */
force ace_vehicles_keepEngineRunning = false;

/* ACE View Distance Limiter */
/* Absolute maximum viewdistance. */
force ace_viewdistance_limitViewDistance = 12000;

/* ACE Weapons */
/* Apparently Defunct. */
force ace_laserpointer_enabled = true;

/* ACE Weather */
force ace_weather_enabled = false;
/* Replace the vanilla wind simulation with ACE's. */
force ace_weather_windSimulation = false;
/* How often, in seconds, to update the simulation. */
force ace_weather_updateInterval = 60;

/* ACE Wind Deflection */
/* If bullet flight paths are influenced by wind. */
force ace_winddeflection_enabled = true;
/* How often to apply this deflection. */
force ace_winddeflection_simulationInterval = 0.05;
/* Whether this also goes for turrets. */
force ace_winddeflection_vehicleEnabled = true;

/* ACE Zeus */
/* Whether to automatically add non-zeus objects. */
force ace_zeus_autoAddObjects = false;
/*
 * Who can make themselves zeus through the ace interaction menu.
 * -1 - No one
 *  0 - Logged in admins
 *  1 - The console
 *  2 - Everyone
 */
force ace_zeus_canCreateZeus = -1;
/* Whether to play a radio message when fire support is called. */
force ace_zeus_radioOrdnance = false;
/* Whether to play a wind noise when ascending to zeus. */
force ace_zeus_remoteWind = false;
/*
 * To whom mines placed by zeus should be reveiled by marking on map.
 * 0 - No one
 * 1 - To the side
 * 2 - Everyone
 */
force ace_zeus_revealMines = 0;
/* Whether players should be notified when a zeus ascends. */
force ace_zeus_zeusAscension = false;
/* Whether to allow zeus to steal your sandwitch. */
force ace_zeus_zeusBird = false;

/* ACEX Field Rations */
force acex_field_rations_enabled = false;
/* Whether thirst and hunger should lower fatigue. */
force acex_field_rations_affectAdvancedFatigue = true;
/* Multiplier on hunger reduction from eating. */
force acex_field_rations_hungerSatiated = 1;
/* Whether to allow canteens to be filled from water sources. */
force acex_field_rations_terrainObjectActions = true;
/* Multipler on thirst reduction from drinking. */
force acex_field_rations_thirstQuenched = 1;
/* Hours one can go without food and water. */
force acex_field_rations_timeWithoutFood = 2;
force acex_field_rations_timeWithoutWater = 2;
/*
 * What actions are available on water sources:
 * 0 - None
 * 2 - Drink
 */
force acex_field_rations_waterSourceActions = 2;

/* ACEX Headless */
force acex_headless_enabled = true;
/* Delay between attempts to rebalance the headless clients. */
force acex_headless_delay = 15;
/*
 * How to deal with no players being in the mission.
 * 0 - Do nothing
 * 1 - End mission after 2 minutes 30 seconds
 * 2 - End mission after 3 minutes 30 seconds
 */
force acex_headless_endMission = 2;
/* Produce log messages fro the headless clients. */
force acex_headless_log = false;
/* Whether to fiddle with the loadouts if they appear broken: 0: no, 1: yes */
force acex_headless_transferLoadout = 1;

/* ACEX Sitting */
/* Whether sit interaction is placed on chairs. */
force acex_sitting_enable = true;

/* ACEX View Restriction */
/*
 * Whether to force players into a view mode.
 * 0 - Don't force
 * 1 - First person
 * 2 - Third person
 * 3 - Selective, use the modes below with the same constants.
 */
force acex_viewrestriction_mode = 0;
force acex_viewrestriction_modeSelectiveAir = 0;
force acex_viewrestriction_modeSelectiveFoot = 0;
force acex_viewrestriction_modeSelectiveLand = 0;
force acex_viewrestriction_modeSelectiveSea = 0;

/* ACRE2 */
/* Automatically adjusts the antenna to the best direction for your current stance. */
force acre_sys_core_automaticAntennaDirection = true;
/* Whether one can send and receive at the same time. */
force acre_sys_core_fullDuplex = true;
/* Whether antenna direction is completely ignored. */
force acre_sys_core_ignoreAntennaDirection = true;
/* Mostly ignored, but tries to disable interference calculations. */
force acre_sys_core_interference = false;
/* Multipler to the likelyhood that AI hear players, also influenced by distance and player loudness. */
force acre_sys_core_revealToAI = 0.5;
/* Multiplier on all omnidirection radio traffic. */
force acre_sys_core_terrainLoss = 0.8;
/* TS3 channel id. */
force acre_sys_core_ts3ChannelName = "ACRE";
force acre_sys_core_ts3ChannelPassword = "";
/*
 * The signal model to use.
 * 0 - Casual
 * 1 - Line of Sight, Simple
 * 2 - Line of Sight, Multipath
 * 3 - Long-Rice, ITM
 * 4 - ITWOM, defunct
 */
force acre_sys_signal_signalModel = 3;

// ARC Misc
/*
 * These settings are for the normal AI components and are applied to all AI automatically.
 */
force arc_misc_difficulty_enabled = true;
force arc_misc_difficulty_aimingAccuracy = 0.11;
force arc_misc_difficulty_aimingShake = 0.11;
force arc_misc_difficulty_aimingSpeed = 0.45;
force arc_misc_difficulty_allowCrewInImmobile = 2;
force arc_misc_difficulty_allowFleeing = 0.5;
force arc_misc_difficulty_AwareFormationSoft = true;
force arc_misc_difficulty_CombatFormationSoft = true;
force arc_misc_difficulty_commanding = 0.18;
force arc_misc_difficulty_courage = 0.18;
force arc_misc_difficulty_disableRemoteSensors = false;
force arc_misc_difficulty_enableAttack = 0;
force arc_misc_difficulty_endurance = 1;
force arc_misc_difficulty_general = 0.2;
force arc_misc_difficulty_randomSkill = 0.1;
force arc_misc_difficulty_reloadSpeed = 1;
force arc_misc_difficulty_spotDistance = 1;
force arc_misc_difficulty_spotTime = 0.18;
force arc_misc_difficulty_useAISteeringComponent = true;

// Death And Hit reactions
/* Whether to perform player hit reactions. */
force WBK_deathAnimMod_Hit_PLR = false;

// VET Unflipping
force vet_unflipping_unit_mass_limit = 1000;
force vet_unflipping_unit_man_limit = 20;
force vet_unflipping_time = 30;
force vet_unflipping_vehicle_mass_limit = 100000;

// Community Base Addons
/*
 * Fixes an issue regarding unit locality changes:
 * 0 - Do not use
 * 1 - Only for players.
 * 2 - Everyone.
 */
force cba_network_loadoutValidation = 2;

/* CBA Weapons */
/* Makes disposables actually one-shot and spawns ammo on removal from inventory. */
force cba_disposable_replaceDisposableLauncher = true;

// CUP
/* Prevent long guns on vehicles from clipping through stricky-outy parts. */
force CUP_Vehicles_PreventBarrelClip = true;

// Dro Clear Cut
/*
 * Time in seconds to cut down various object types.
 */
force dro_clear_cut_bush_cut_time = 30;
force dro_clear_cut_smallTree_cut_time = 60;
force dro_clear_cut_largeTree_cut_time = 120;

// DUI - Squad Radar - Indicators
force diwako_dui_indicators_crew_range_enabled = false;
force diwako_dui_indicators_range = 20;
force diwako_dui_indicators_range_crew = 20;
force diwako_dui_indicators_range_scale = true;
force diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Nametags
force diwako_dui_nametags_enabled = false;
force diwako_dui_nametags_enableOcclusion = true;
force diwako_dui_nametags_showUnconAsDead = true;
force diwako_dui_nametags_useSideIsFriendly = true;

// DUI - Squad Radar - Radar
force diwako_dui_compassRange = 35;
force diwako_dui_distanceWarning = 3;
force diwako_dui_enable_compass_dir = 2;
force diwako_dui_enable_occlusion = true;
force diwako_dui_enable_occlusion_cone = 360;
force diwako_dui_radar_ace_medic = true;
force diwako_dui_radar_compassRangeCrew = 35;
force diwako_dui_radar_icon_scale_crew = 6;
force diwako_dui_radar_occlusion_fade_in_time = 1;
force diwako_dui_radar_occlusion_fade_time = 10;
force diwako_dui_radar_sortType = "none";
force diwako_dui_radar_sqlFirst = true;
force diwako_dui_radar_vehicleCompassEnabled = false;

// dzn Artillery Illumination
force dzn_Flares_H_Color = [1,1,0.5];
force dzn_Flares_H_Deviation = 25;
force dzn_Flares_H_Enabled = true;
force dzn_Flares_H_Intensity = 10;
force dzn_Flares_H_ListSetting = "StaticCannon";
force dzn_Flares_H_Range = 450;
force dzn_Flares_M_Color = [1,1,0.5];
force dzn_Flares_M_Deviation = 25;
force dzn_Flares_M_Enabled = true;
force dzn_Flares_M_Intensity = 10;
force dzn_Flares_M_ListSetting = "StaticMortar, Mortar_01_base_F, CUP_B_M1129_MC_MK19_Desert, CUP_B_M1129_MC_MK19_Woodland";
force dzn_Flares_M_Range = 400;

// Enhanced Movement Rework
force emr_main_allowMidairClimbing = true;
force emr_main_blacklistStr = "";
force emr_main_climbingEnabled = true;
force emr_main_climbOnDuty = 3.4;
force emr_main_climbOverDuty = 3;
force emr_main_dropDuty = 0.7;
force emr_main_enableWalkableSurface = true;
force emr_main_enableWeightCheck = true;
force emr_main_jumpDuty = 1;
force emr_main_jumpingEnabled = true;
force emr_main_jumpingLoadCoefficient = 1;
force emr_main_jumpVelocity = 3.4;
force emr_main_maxClimbHeight = 2.6;
force emr_main_maxDropHeight = 5;
force emr_main_maxWeightClimb1 = 100;
force emr_main_maxWeightClimb2 = 85;
force emr_main_maxWeightClimb3 = 60;
force emr_main_maxWeightJump = 100;
force emr_main_staminaCoefficient = 3;
force emr_main_whitelistStr = "";

// GRAD CaptiveWalkingAnimation
force grad_captiveWalking_functions_allowFreeing = true;
force grad_captiveWalking_functions_allowRunning = false;
force grad_captiveWalking_functions_allowWalkingWhileCaptiv = true;
force grad_captiveWalking_functions_disableEscorting = false;
force grad_captiveWalking_functions_freeingTime = 150;

// GRAD Trenches
force grad_trenches_functions_allowBigEnvelope = true;
force grad_trenches_functions_allowCamouflage = true;
force grad_trenches_functions_allowDigging = true;
force grad_trenches_functions_allowGiantEnvelope = true;
force grad_trenches_functions_allowLongEnvelope = true;
force grad_trenches_functions_allowShortEnvelope = true;
force grad_trenches_functions_allowSmallEnvelope = true;
force grad_trenches_functions_allowVehicleEnvelope = true;
force grad_trenches_functions_bigEnvelopeDigTime = 40;
force grad_trenches_functions_buildFatigueFactor = 0.2;
force grad_trenches_functions_camouflageRequireEntrenchmentTool = false;
force grad_trenches_functions_giantEnvelopeDigTime = 90;
force grad_trenches_functions_LongEnvelopeDigTime = 100;
force grad_trenches_functions_shortEnvelopeDigTime = 20;
force grad_trenches_functions_smallEnvelopeDigTime = 30;
force grad_trenches_functions_stopBuildingAtFatigueMax = false;
force grad_trenches_functions_vehicleEnvelopeDigTime = 120;
force grad_trenches_functions_allowTrenchDecay = true;
force grad_trenches_functions_timeoutToDecay = 1800;
force grad_trenches_functions_decayTime = 600;
force grad_trenches_functions_playersinAreaRadius = 500;

// LAxemann's Suppress
force L_Suppress_buildup = 1.3;
force L_Suppress_enabled = true;
force L_Suppress_flyByEffects = true;
force L_Suppress_halting = false;
force L_Suppress_intensity = 0.3;
force L_Suppress_playerSwabEnabled = true;
force L_Suppress_recovery = 2.2;

// NIArms
force niarms_accswitch = true;
force niarms_magSwitch = true;

// TMF
force TMF_chat_healUsage = 3;
force TMF_chat_loadoutUsage = 3;
force TMF_chat_radioUsage = 3;
force TMF_chat_rpUsage = 3;
force TMF_chat_specUsage = 3;
force TMF_chat_tpUsage = 3;
force TMF_chat_whisperUsage = 3;
force TMF_orbat_markerUpdateInterval = 3;
force TMF_safestart_defaultSS = 120;
force TMF_safestart_enableDefaultSS = false;
force TMF_safestart_handleAI = true;
force TMF_safestart_triggerSound = false;
force TMF_spectator_isJIPAllowed = 1;

// TSP Animate
force tsp_cba_animate_door = true;
force tsp_cba_animate_dynamicReadyBush = true;
force tsp_cba_animate_dynamicReadyFriend = 2;
force tsp_cba_animate_dynamicReadyFriendAngle = 35;
force tsp_cba_animate_dynamicReadyObject = 1;
force tsp_cba_animate_friendsAreObjects = false;
force tsp_cba_animate_map = true;
force tsp_cba_animate_nvg = true;
force tsp_cba_animate_walk = false;

// TSP Breach
force tsp_cba_breach = true;
force tsp_cba_breach_ace = true;
force tsp_cba_breach_ace_locking = true;
force tsp_cba_breach_ammo = "[		\
	""CUP_12Rnd_B_Saiga12_Slug"", 	\
	""CUP_1Rnd_12Gauge_Slug"", 		\
	""CUP_20Rnd_B_AA12_Sluge_Sug"", \
	""2Rnd_12Galug"",				\
	""CUP_2Rnd_12Gauge_Slug"", 		\
	""CUP_5Rnd_B_Saiga12_Slug"", 	\
	""CUP_6Rnd_12Gauge_Slug"", 		\
	""6Rnd_12Gauge_Slug"", 			\
	""sfp_12Gauge_8rd_Slug"", 		\
	""CUP_8Rnd_12Gauge_Slug"", 		\
	""10Rnd_50BW_Mag_F"", 			\
	""CUP_10Rnd_50BW_Mag_M4_M""		\
]";
force tsp_cba_breach_ammoMultiplier = 1;
force tsp_cba_breach_autoTime = 3;
force tsp_cba_breach_lockBlacklist = "[]";
force tsp_cba_breach_lockDoor = 0;
force tsp_cba_breach_lockHouse = 0;
force tsp_cba_breach_military = "[ 				\
	""Land_Budova4_in"",						\
	""Land_Budova4"",							\
	""Barrack2"",								\
	""Land_Barrack2"",							\
	""Land_MilOffices_V1_F"",					\
	""Land_Mil_Barracks_L_EP1"",				\
	""Land_Barrack2_EP1"",						\
	""Land_Mil_Barracks_EP1"",					\
	""Land_Mil_Barracks_no_interior_EP1_CUP"",	\
	""Land_Mil_Barracks_i_EP1"",				\
	""Land_Mil_Barracks_L"",					\
	""Land_Mil_Barracks_no_interior_CUP"",		\
	""Land_Mil_Barracks_i"",					\
	""Land_Mil_Barracks"",						\
	""Land_GuardHouse_02_F"",					\
	""Land_Mil_Guardhouse_EP1"",				\
	""Land_Mil_Guardhouse"",					\
	""Land_Mil_Guardhouse_no_interior_CUP"",	\
	""Land_GuardHouse_02_grey_F"",				\
	""Land_Barracks_03_F"",						\
	""Land_Barracks_05_F"",						\
	""Land_Barracks_02_F"",						\
	""Land_Barracks_04_F"",						\
	""Land_ControlTower_02_F"",					\
	""Land_Mil_Guardhouse_no_interior_EP1_CUP"",\
	""Land_Radar_01_HQ_F"",						\
	""Land_i_Barracks_V2_F"",					\
	""Land_i_Barracks_V1_F"",					\
	""Land_u_Barracks_V2_F"",					\
	""Land_Barracks_06_F"",						\
	""Land_Mil_House_dam_EP1"",					\
	""Land_Barracks_01_grey_F"",				\
	""Land_Barracks_01_dilapidated_F"",			\
	""Land_Mil_House_EP1"",						\
	""Land_Army_hut2_int"",						\
	""Land_Barracks_01_camo_F"",				\
	""Land_Army_hut_int"",						\
	""Land_Army_hut3_long"",					\
	""Land_Army_hut2"",							\
	""Land_Army_hut3_long_int""					\
]";
force tsp_cba_breach_reinforced = "[	\
	""Land_Ammostore2"",				\
	""Land_Garaz_s_tankem"",			\
	""Land_Garaz_bez_tanku"",			\
	""Land_Cargo_House_V4_F"",			\
	""Land_Cargo_Tower_V1_F"",			\
	""Land_Cargo_HQ_V4_F"",				\
	""Land_Cargo_Tower_V1_No4_F"",		\
	""Land_Cargo_Tower_V1_No5_F"",		\
	""Land_Cargo_Tower_V1_No7_F"",		\
	""Land_Cargo_Tower_V4_F"",			\
	""Land_Cargo_Tower_V1_No2_F"",		\
	""Land_Cargo_Tower_V2_F"",			\
	""Land_Cargo_Tower_V3_F"",			\
	""Land_Cargo_Tower_V1_No1_F"",		\
	""Land_Cargo_Tower_V1_No3_F"",		\
	""Land_Cargo_HQ_V2_F"",				\
	""Land_Medevac_HQ_V1_F"",			\
	""Land_Cargo_HQ_V1_F"",				\
	""Land_Cargo_House_V2_F"",			\
	""Land_Medevac_house_V1_F"",		\
	""Land_Cargo_Tower_V1_No6_F"",		\
	""Land_Cargo_House_V1_F"",			\
	""Land_Cargo_HQ_V3_F"",				\
	""Land_Cargo_House_V3_F""			\
]";
force tsp_cba_breach_vanilla = false;
force tsp_cba_breach_wall_physics = false;
force tsp_cba_breach_wall_velocity = "[0,0,-0.5]";

// TSP Melee
force tsp_cba_melee = true;
force tsp_cba_melee_damageModifier = 1;
force tsp_cba_melee_moveset = true;

// Zeus Enhanced
force zen_common_ascensionMessages = false;
force zen_common_autoAddObjects = false;
force zen_common_cameraBird = false;
force zen_editor_parachuteSounds = true;
