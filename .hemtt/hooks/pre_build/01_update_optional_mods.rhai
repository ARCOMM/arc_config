let optionalMods = HEMTT_VFS.join("addons").join("cba_settings_userconfig").join("optional_mods.txt").open_file().read();
let optionalModsRef = "[";
for line in optionalMods.split("\n") {
    line.trim();

    if line.len < 1 {
        continue;
    }

    if line[0] != '#' {
        optionalModsRef += "'" + line + "',"
    }
}
if optionalModsRef.len > 1 {
    optionalModsRef.crop(0, optionalModsRef.len - 1)
}
optionalModsRef += "]";

let cbaSettings = HEMTT_VFS.join("addons").join("cba_settings_userconfig").join("cba_settings.sqf").open_file().read();
cbaSettings.replace("%OPTIONAL_MODS%", optionalModsRef);
HEMTT_VFS.join("addons").join("cba_settings_userconfig").join("cba_settings.sqf").create_file().write(cbaSettings);
