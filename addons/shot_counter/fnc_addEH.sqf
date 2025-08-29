// aCount_addEH
// FUNC(addEH)

_obj = param [0];
_obj setVariable ["aCount_originalSide",(_obj call Olsen_FW_FNC_getOriginalSide),false];

if (_obj isKindOf "Man") then {
    _obj addEventHandler ["fired", {
        params ["", "", "", "", "", "_magazine", "", "_gunner"];
        [(_gunner call Olsen_FW_FNC_getOriginalSide),_magazine call aCount_getDisplayName] call aCount_shotCount;
    }];

    _obj setVariable ["aCount_firedEh", true, false];
};

if (
    (_obj isKindOf "Land" && {!(_obj isKindOf "Man")})
    || {_obj isKindOf "Air" || {_obj isKindOf "Ship"}}
) then {
    if (count crew _obj > 0) then { {
            _x setVariable ["aCount_firedEh", true, false];
            _x setVariable ["aCount_originalSide",(_obj call Olsen_FW_FNC_getOriginalSide),false];
        } forEach crew _obj;
    };

    _obj addEventHandler ["fired", {
        params ["", "", "", "", "", "_magazine", "", "_gunner"];
        [(_gunner call Olsen_FW_FNC_getOriginalSide),_magazine call aCount_getDisplayName] call aCount_shotCount;
    }];
    _obj setVariable ["aCount_firedEh", true, false];
};
