#include "script_component.hpp"

    GVAR(isZEUS)
|| {GVAR(isWest) && {roleDescription ace_player in GVAR(rolesWest) || {GVAR(alwaysAllowGroupLeaderWest) && {ace_player == leader ace_player}}} && {[[] call acre_api_fnc_getCurrentRadio] call acre_api_fnc_getBaseRadio in GVAR(radiosWest)}}
|| {GVAR(isEast) && {roleDescription ace_player in GVAR(rolesEast) || {GVAR(alwaysAllowGroupLeaderEast) && {ace_player == leader ace_player}}} && {[[] call acre_api_fnc_getCurrentRadio] call acre_api_fnc_getBaseRadio in GVAR(radiosEast)}}
|| {GVAR(isGuer) && {roleDescription ace_player in GVAR(rolesGuer) || {GVAR(alwaysAllowGroupLeaderGuer) && {ace_player == leader ace_player}}} && {[[] call acre_api_fnc_getCurrentRadio] call acre_api_fnc_getBaseRadio in GVAR(radiosGuer)}}
