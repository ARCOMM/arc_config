#include "script_component.hpp"

    GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {"TargetLast" == GVAR(targetType)}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {"TargetLast" == GVAR(targetType)}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {"TargetLast" == GVAR(targetType)}}
