class CfgWorlds {
    class DefaultWorld;

    class CAWorld : DefaultWorld {
        class Grid;
    };

    class WL_Rosche : CAWorld {
        class Grid : Grid {
            offsetX = 0;
            offsetY = 15360;
        };
    };
};
