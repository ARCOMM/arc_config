#include "script_component.hpp"

    GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}
|| {GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsFlare_AmmoCountWest) > 0}}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsFlare_AmmoCountEast) > 0}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsFlare_AmmoCountGuer) > 0}}
