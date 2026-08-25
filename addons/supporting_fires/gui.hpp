
// createDialog "Supporting_Fires_Dialog";

class IGUIBack;
class RscText;
class RscEdit;
class RscButton;

class GVAR(Grid_Dialog) {
    idd = -1;
    moving = 1;
    movingEnable = 0;
    class controls {
        class GVAR(Grid_Back) : IGUIBack {
            borderSize = 10;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            moving = 1;
            movingEnable = 0;
            x = "SafeZoneX + (720 / 1920) * SafeZoneW";
            y = "SafeZoneY + (300 / 1080) * SafeZoneH";
            w = "(480 / 1920) * SafeZoneW";
            h = "(345 / 1080) * SafeZoneH";
        };
        class GVAR(InputGridText) : RscText {
            borderSize = 10;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 999;
            style = 2;
            text = "Enter 6 Digit Grid for Target";
            tooltip = "Only 6 digit grids are supported. Other digit grids sizes will fail.\nRemember that a grid reference indicates the whole grid, not just the bottom left corner.\nThis means the target will be the centre of the grid.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            y = "SafeZoneY + (330 / 1080) * SafeZoneH";
            x = "SafeZoneX + (855 / 1920) * SafeZoneW";
            w = "(210 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class GVAR(Grid_Text_X) : RscText {
            borderSize = 10;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1000;
            style = 2;
            text = "3 Digit Easting (X)";
            tooltip = "The Eastings are the grid numbers on the bottom or top of the map which indicate how far east the grid square is.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (390 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class GVAR(Grid_Text_Y) : RscText {
            borderSize = 10;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1001;
            style = 2;
            text = "3 Digit Northing (Y)";
            tooltip = "The Northings are the grid numbers on the left or right sides of the map which indicate how far north the grid square is.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (390 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class GVAR(Grid_Target_X) : RscEdit {
            onLoad = QUOTE(_this call FUNC(ui_Grid_Target_X_onLoad));
            borderSize = 10;
            canModify = 1;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1002;
            style = 2;
            text = "";
            tooltip = "Must be 3 digits, include leading zeros if requried.\nOnly numbers are supported. Any letters or special characters will fail.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (450 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class GVAR(Grid_Target_Y) : RscEdit {
            onLoad = QUOTE(_this call FUNC(ui_Grid_Target_Y_onLoad));
            borderSize = 10;
            canModify = 1;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1003;
            style = 2;
            text = "";
            tooltip = "Must be 3 digits, include leading zeros if requried.\nOnly numbers are supported. Any letters or special characters will fail.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (450 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class GVAR(Grid_Button_Apply) : RscButton {
            action = QUOTE([] call FUNC(ui_Grid_Button_Apply_action));
            onLoad = QUOTE([] call FUNC(ui_Grid_Button_Apply_onLoad));
            borderSize = 0;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1004;
            style = 2;
            text = "Apply";
            tooltip = "Click to apply the entered coordinates to the preview box.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (510 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class GVAR(Grid_Output) : RscText {
            borderSize = 10;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1005;
            style = 2;
            text = "";
            tooltip = "A preview of the currently selected grid.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (510 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };

        class GVAR(Grid_Button_Accept) : RscButton {
            action = QUOTE([] call FUNC(ui_Grid_Button_Accept_action));
            borderSize = 0;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1006;
            style = 2;
            text = "Accept";
            tooltip = "Click to accept the coordinates in the preview box and close this dialog.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (750 / 1920) * SafeZoneW";
            y = "SafeZoneY + (570 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
        class GVAR(Grid_Button_Cancel) : RscButton {
            action = "closeDialog 2";
            borderSize = 0;
            colorBackground[] = {0.133333, 0.160784, 0.184314, 0.75};
            colorText[] = {0.741176, 0.172549, 0.172549, 1};
            idc = 1007;
            style = 2;
            text = "Cancel";
            tooltip = "Click to cancel all changes and close this dialog.";
            tooltipColorBox[] = {0.741176, 0.172549, 0.172549, 1};
            tooltipColorShade[] = {0.133333, 0.160784, 0.184314, 0.75};
            tooltipColorText[] = {0.741176, 0.172549, 0.172549, 1};
            x = "SafeZoneX + (975 / 1920) * SafeZoneW";
            y = "SafeZoneY + (570 / 1080) * SafeZoneH";
            w = "(195 / 1920) * SafeZoneW";
            h = "(45 / 1080) * SafeZoneH";
        };
    };
};
