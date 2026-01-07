class CfgWorlds {
    class DefaultWorld;

    class CAWorld : DefaultWorld {
        class Grid;
    };

    class IslaPera : CAWorld {
        class Grid : Grid {
            offsetX = 0;
            offsetY = 10240;
        };
    };
};
