class CfgWorlds {
    class DefaultWorld;

    class CAWorld : DefaultWorld {
        class Grid;
    };

    class Kidal : CAWorld {
        class Grid : Grid {
            offsetX = 0;
            offsetY = 61440;
        };
    };
} ;
