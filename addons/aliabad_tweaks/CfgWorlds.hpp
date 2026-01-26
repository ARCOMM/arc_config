class CfgWorlds {
    class DefaultWorld;

    class CAWorld : DefaultWorld {
        class Grid;
    };

    class MCN_Aliabad : CAWorld {
        icon = ""; //fixes the No entry 'bin\config.bin/CfgWorlds/MCN_Aliabad.icon' error
        class Grid : Grid {
            offsetX = 0;
            offsetY = 5120;
        };
    };
} ;
