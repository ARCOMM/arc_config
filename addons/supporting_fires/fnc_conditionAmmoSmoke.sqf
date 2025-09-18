#include "script_component.hpp"

    GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}
|| {GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsSmoke_AmmoCountWest) > 0}}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsSmoke_AmmoCountEast) > 0}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsSmoke_AmmoCountGuer) > 0}}
