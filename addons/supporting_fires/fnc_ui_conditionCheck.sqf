#include "script_component.hpp"

    GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}
|| {GVAR(isWest) && {GVAR(fireMissionAvailableWest)}}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}}
