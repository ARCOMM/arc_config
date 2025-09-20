#include "script_component.hpp"

    GVAR(isZEUS) && {GVAR(fireMissionAvailableZeus)}
|| {GVAR(isWest) && {GVAR(fireMissionAvailableWest)} && {GVAR(shellsHE_AmmoCountWest) > 0 || GVAR(shellsSmoke_AmmoCountWest) > 0 || GVAR(shellsFlare_AmmoCountWest) > 0}}
|| {GVAR(isEast) && {GVAR(fireMissionAvailableEast)} && {GVAR(shellsHE_AmmoCountEast) > 0 || GVAR(shellsSmoke_AmmoCountEast) > 0 || GVAR(shellsFlare_AmmoCountEast) > 0}}
|| {GVAR(isGuer) && {GVAR(fireMissionAvailableGuer)} && {GVAR(shellsHE_AmmoCountGuer) > 0 || GVAR(shellsSmoke_AmmoCountGuer) > 0 || GVAR(shellsFlare_AmmoCountGuer) > 0}}
