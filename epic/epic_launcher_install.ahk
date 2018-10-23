;download and install fornite

if FileExist("EpicInstaller-0.0.0-fortnite.msi") {
} else {
	UrlDownloadToFile, https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-7.16.0.msi?launcherfilename=EpicInstaller-7.16.0-fortnite.msi, EpicInstaller-0.0.0-fortnite.msi
}

RunWait, msiexec /i EpicInstaller-0.0.0-fortnite.msi /passive /qr /norestart /log install.log
