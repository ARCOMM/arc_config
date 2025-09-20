#include "script_component.hpp"

(!visibleMap) && {
        GVAR(isWest) && {GVAR(fireMissionAvailableWest)}
    || {GVAR(isEast) && {GVAR(fireMissionAvailableEast)}}
    || {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)}}
    || {GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}}
}
