#include "script_component.hpp"

GVAR(Grid_Target_X_Current) = ctrlText 1002;
GVAR(Grid_Target_Y_Current) = ctrlText 1003;

[GVAR(Grid_Target_X_Current), GVAR(Grid_Target_Y_Current)] call FUNC(setTargetGrid);

closeDialog 1;
