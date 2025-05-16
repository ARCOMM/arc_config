class CfgWorlds {
    class DefaultWorld;

    class CAWorld : DefaultWorld {
        class Grid;
    };

    class Kidal : CAWorld {
        class Grid : Grid {
            offsetX = 0;
            offsetY = 61440;

            class Zoom1 { // 100 m grid squares
                zoomMax = 0.1; // default was 0.2
            };
            class Zoom2 { // 1000 m grid squares
                zoomMax = 0.5; // default was 0.95
            };
        };
    };
} ;
