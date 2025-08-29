// aCount_getDisplayName
// FUNC(getDisplayName)

private ["_className","_displayName","_foundClass","_ret"];
_className = _this;
_ret = "Error";
_foundClass = aCount_classNames find _className;

if (_foundClass < 0) then {
    _cfgMag = (configFile >> "CfgMagazines" >> _className);
    _ret =  getText(_cfgMag >> "displayName");

    if (_ret isEqualTo "") then {
        _ret = (str _className);
        diag_log text (format ["displayName entry is blank for %1",_ret]);
    };

    aCount_classNames pushBack _className;
    aCount_classNames pushBack _ret;

} else {
    _ret = aCount_classNames select( _foundClass + 1);
};

_ret
