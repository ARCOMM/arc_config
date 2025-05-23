class CfgUserActions {
    class GVAR(turnEngineOn) {
        displayName = "Engine (On)";
        tooltip = "Turns the engine on.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnEngineOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnEngineOff) {
        displayName = "Engine (Off)";
        tooltip = "Turns the engine off.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnEngineOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(toggleMasterLights) {
        displayName = "Master Lights (Toggle)";
        tooltip = "Toggles master lights on or off, restricting or allowing other lights to fuction.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(toggleMasterLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnMasterLightsOn) {
        displayName = "Master Lights (On)";
        tooltip = "Turns master lights on, allowing other lights to be turned on.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnMasterLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnMasterLightsOff) {
        displayName = "Master Lights (Off)";
        tooltip = "Turns master lights off, preventing any lights from being turned on.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnMasterLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(toggleCollisionLights) {
        displayName = "Collision Lights (Toggle)";
        tooltip = "Toggles collision lights on or off.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(toggleCollisionLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnCollisionLightsOn) {
        displayName = "Collision Lights (On)";
        tooltip = "Turns collision lights on.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnCollisionLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnCollisionLightsOff) {
        displayName = "Collision Lights (Off)";
        tooltip = "Turns collision lights off.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnCollisionLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(toggleMainLights) {
        displayName = "Main Lights (Toggle)";
        tooltip = "Toggles headlights (or other main lights) on or off.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(toggleMainLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnMainLightsOn) {
        displayName = "Main Lights (On)";
        tooltip = "Turns headlights (or other main lights) on.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnMainLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(turnMainLightsOff) {
        displayName = "Main Lights (Off)";
        tooltip = "Turns headlights (or other main lights) off.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(turnMainLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(toggleRamp) {
        displayName = "Ramp (Toggle)";
        tooltip = "Toggles the vehicle ramp open or closes";
        onActivate = QUOTE([vehicle ace_player] call FUNC(toggleRamp));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(rampOpen) {
        displayName = "Ramp (Open)";
        tooltip = "Opens the vehicle ramp.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(rampOpen));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(rampLevel) {
        displayName = "Ramp (Level)";
        tooltip = "Opens the vehicle ramp halfway.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(rampOpen));
        onDeactivate = "";
        onAnalog = "";
    };
    class GVAR(rampClose) {
        displayName = "Ramp (Close)";
        tooltip = "Closes the vehicle ramp.";
        onActivate = QUOTE([vehicle ace_player] call FUNC(rampClose));
        onDeactivate = "";
        onAnalog = "";
    };
};
