#include "script_component.hpp"

/*
 * Author: Drofseh
 *
 * Increments the number of hits attributed to the player
 * [] call arc_cfg_shot_counter_shotHit;
 *
 * Arguments:
 * 0: A side <SIDE>
 * 1: A magazine's displayName <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Public: No
 */

params [
    "_target",
    "_shooter",
    "_projectile",
    "",
    "",
    "",
    "_ammo",
    "",
    "",
    "",
    "",
    "_instigator"
];

if !(alive _target) exitWith {};

if (isNull _instigator
    && {!isNull _shooter && {_shooter == ace_player}}
) then {
    _instigator == _shooter;
};

if (isNull _instigator || {_instigator != ace_player}
    || {[_target, _shooter, _projectile, _ammo, _instigator] isEqualTo (missionNamespace getVariable [QGVAR(lastHit), [""]])}
) exitWith {};

missionNamespace setVariable [QGVAR(lastHit), [_target, _shooter, _projectile, _ammo, _instigator]];

GVAR(playerHits) set [1, (GVAR(playerHits) select 1) + 1];
