#include "script_component.hpp"

    GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}
|| {GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsHE_AmmoCountWest) > 0}}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsHE_AmmoCountEast) > 0}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsHE_AmmoCountGuer) > 0}}
