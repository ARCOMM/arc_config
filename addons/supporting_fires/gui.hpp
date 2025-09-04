
// createDialog "Supporting_Fires_Dialog";
class IGUIBack;
class RscEdit;
class RscText;
class RscButton;

class Supporting_Fires_Dialog {
    idd = -1;
    moving = 1;
    movingEnable = 1;
    class controls {
        class Supporting_Fires_Grid_Back  : IGUIBack {
            borderSize = 10;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            moving = 1;
            movingEnable = 1;
            x = "SafeZoneX + (720 / 1920) * SafeZoneW";
            y = "SafeZoneY + (300.000000000001 / 1080) * SafeZoneH";
            w = "(480 / 1920) * SafeZoneW";
            h = "(345 / 1080) * SafeZoneH";
        };
        class Supporting_Fires_InputGridText  : RscText {
            borderSize = 10;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 999;
            //moving = 1;
            //movingEnable = 1;
            style = 2;
            text = "Enter 6 Digit Grid for Target";
            tooltip = "Only 6 digit grids are supported. Other digit grids sizes will fail.\nRemember that a grid reference indicates the whole grid, not just the bottom left corner.\nThis means the target will be the centre of the grid.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            y = "SafeZoneY + (330 / 1080) * SafeZoneH";
            x = "SafeZoneX + (855 / 1920) * SafeZoneW";
            w = "(210 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class Supporting_Fires_Grid_Text_X : RscText {
            borderSize = 10;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1000;
            style = 2;
            text = "3 Digit Easting (X)";
            tooltip = "The Eastings are the grid numbers on the bottom or top of the map which indicate how far east the grid square is.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (390 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class Supporting_Fires_Grid_Text_Y : RscText {
            borderSize = 10;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1001;
            style = 2;
            text = "3 Digit Northing (Y)";
            tooltip = "The Northings are the grid numbers on the left or right sides of the map which indicate how far north the grid square is.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (390 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class Supporting_Fires_Grid_Target_X : RscEdit {
            borderSize = 10;
            canModify = 1;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1002;
            //onKeyUp = "player setVariable [""Supporting_Fires_Grid_Target_X_Current"", (ctrlText 1002)];";
            onLoad = " \
                params [""_displayorcontrol""]; \
                [ \
                    { \
                        params [""_displayorcontrol""]; \
                        _displayorcontrol ctrlSetText (player getVariable [""Supporting_Fires_Grid_Target_X_Current"", ""000""]); \
                    }, \
                    _displayorcontrol, \
                    0.01 \
                ] call CBA_fnc_waitAndExecute; \
            ";
            style = 2;
            text = "";
            tooltip = "Must be 3 digits, include leading zeros if requried.\nOnly numbers are supported. Any letters or special characters will fail.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (450 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class Supporting_Fires_Grid_Target_Y : RscEdit {
            borderSize = 10;
            canModify = 1;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1003;
            //onKeyUp = "player setVariable [""Supporting_Fires_Grid_Target_Y_Current"", (ctrlText 1003)];";
            onLoad = " \
                params [""_displayorcontrol""]; \
                [ \
                    { \
                        params [""_displayorcontrol""]; \
                        _displayorcontrol ctrlSetText (player getVariable [""Supporting_Fires_Grid_Target_Y_Current"", ""000""]); \
                    }, \
                    _displayorcontrol, \
                    0.01 \
                ] call CBA_fnc_waitAndExecute; \
            ";
            style = 2;
            text = "";
            tooltip = "Must be 3 digits, include leading zeros if requried.\nOnly numbers are supported. Any letters or special characters will fail.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (450 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class Supporting_Fires_Grid_Button_Apply : RscButton {
            action = "ctrlSetText [1005, (format [""East: %1 - North: %2"", ctrlText 1002, ctrlText 1003])];";
            borderSize = 0;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1004;
            onLoad = " \
                [ \
                    { \
                        ctrlSetText [1005, (format [""East: %1 - North: %2"", ctrlText 1002, ctrlText 1003])] \
                    }, \
                    [], \
                    0.1 \
                ] call CBA_fnc_waitAndExecute; \
            ";
            style = 2;
            text = "Apply";
            tooltip = "Click to apply the entered coordinates to the preview box.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (510 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class Supporting_Fires_Grid_Output : RscText {
            borderSize = 10;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            tooltip = "A preview of the currently selected grid.";
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1005;
            text = "";
            style = 2;
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (510 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class Supporting_Fires_Grid_Button_Accept : RscButton {
            action = " \
                player setVariable [""Supporting_Fires_Grid_Target_X_Current"", (ctrlText 1002)]; \
                player setVariable [""Supporting_Fires_Grid_Target_Y_Current"", (ctrlText 1003)]; \
                [ctrlText 1002, ctrlText 1003] call FUNC(setTargetGrid); closeDialog 1; \
            ";
            borderSize = 0;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1006;
            style = 2;
            text = "Accept";
            tooltip = "Click to accept the coordinates in the preview box and close this dialog.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (570 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class Supporting_Fires_Grid_Button_Cancel : RscButton {
            action = "closeDialog 2;";
            borderSize = 0;
            colorBackground[] = {0, 0, 0, 0.5};
            colorText[] = {0.741, 0.173, 0.173, 1};
            idc = 1007;
            style = 2;
            text = "Cancel";
            tooltip = "Click to cancel all changes and close this dialog.";
            tooltipColorBox[] = {0.741, 0.173, 0.173, 1};
            tooltipColorShade[] = {0, 0, 0, 0.5};
            tooltipColorText[] = {0.741, 0.173, 0.173, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (570 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
    };
};
