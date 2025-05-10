class CfgUserActions {
    class DOUBLES(ADDON,toggleMasterLights) {
        displayName = "Master Lights (Toggle)";
        tooltip = "Toggles master lights on or off, restricting or allowing other lights to fuction.";
        onActivate = QUOTE([vehicle player] call FUNC(toggleMasterLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnMasterLightsOn) {
        displayName = "Master Lights (On)";
        tooltip = "Turns master lights on, allowing other lights to be turned on.";
        onActivate = QUOTE([vehicle player] call FUNC(turnMasterLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnMasterLightsOff) {
        displayName = "Master Lights (Off)";
        tooltip = "Turns master lights off, preventing any lights from being turned on.";
        onActivate = QUOTE([vehicle player] call FUNC(turnMasterLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,toggleCollisionLights) {
        displayName = "Collision Lights (Toggle)";
        tooltip = "Toggles collision lights on or off.";
        onActivate = QUOTE([vehicle player] call FUNC(toggleCollisionLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnCollisionLightsOn) {
        displayName = "Collision Lights (On)";
        tooltip = "Turns collision lights on.";
        onActivate = QUOTE([vehicle player] call FUNC(turnCollisionLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnCollisionLightsOff) {
        displayName = "Collision Lights (Off)";
        tooltip = "Turns collision lights off.";
        onActivate = QUOTE([vehicle player] call FUNC(turnCollisionLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,toggleMainLights) {
        displayName = "Main Lights (Toggle)";
        tooltip = "Toggles headlights (or other main lights) on or off.";
        onActivate = QUOTE([vehicle player] call FUNC(toggleMainLights));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnMainLightsOn) {
        displayName = "Main Lights (On)";
        tooltip = "Turns headlights (or other main lights) on.";
        onActivate = QUOTE([vehicle player] call FUNC(turnMainLightsOn));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,turnMainLightsOff) {
        displayName = "Main Lights (Off)";
        tooltip = "Turns headlights (or other main lights) off.";
        onActivate = QUOTE([vehicle player] call FUNC(turnMainLightsOff));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,toggleRamp) {
        displayName = "Ramp (Toggle)";
        tooltip = "Toggles the vehicle ramp open or closes";
        onActivate = QUOTE([vehicle player] call FUNC(toggleRamp));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,rampOpen) {
        displayName = "Ramp (Open)";
        tooltip = "Opens the vehicle ramp.";
        onActivate = QUOTE([vehicle player] call FUNC(rampOpen));
        onDeactivate = "";
        onAnalog = "";
    };
    class DOUBLES(ADDON,rampClose) {
        displayName = "Ramp (Close)";
        tooltip = "Closes the vehicle ramp.";
        onActivate = QUOTE([vehicle player] call FUNC(rampClose));
        onDeactivate = "";
        onAnalog = "";
    };
};
