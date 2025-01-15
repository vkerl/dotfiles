$env.YAZI_FILE_ONE = "C:/Users/ZYB/scoop/apps/git/current/usr/bin/file.exe"
$env.PATH = ($env.PATH | split row (char esep) | prepend 'C:/Users/ZYB/AppData/Local/Android/Sdk/platform-tools')