# EPIC Games auto install scripts

These scripts let you download and install fortnite with minimal user 
intervention. The scripts are dumb and each step is separated so the
operator can decide when to trigger the next step.

## A warning about UAC

User Account Control will potentially request three times for authorisation
1. When running the launcher installer .msi file.
2. When the launcher runs for the first time and updates itself.
3. When you install a game.

## Steps to install fortnite:

All scripts referenced here should be compiled before starting this process

0. Turn of UAC it's just going to cause trouble with the automation of this
1. Run `epic_launcher_install.exe`
2. Wait for machines to reach login screen
3. Run `epic_launcher_login.exe <username> <password>`
4. Wait for machines to login
5. Run `fortnite_install.exe`

## Other scripts:

- `epic_launcher_logout.exe` - Logout the currently logged in epic account.

## Dump of interesting cli options
```

;"C:/Program Files (x86)/Epic Games/Launcher/Portal/Binaries/Win64/EpicGamesLauncher.exe"  -SaveToUserDir -Messaging -ForcedRestart
;"C:/Program Files (x86)/Epic Games/Launcher/Engine/Binaries/Win64/UnrealCEFSubProcess.exe" --type=renderer --disable-gpu-compositing --no-sandbox --disable-databases --primordial-pipe-token=7604173C0C2A263206097E5D1C6C977C --lang=en-US --lang=en-US --locales-dir-path="C:/Program Files (x86)/Epic Games/Launcher/Engine/Binaries/ThirdParty/CEF3/Win64/Resources/locales" --log-file=C:/Users/danielsalamy/AppData/Local/EpicGamesLauncher/Saved/Logs/cef3.log --log-severity=warning --product-version="EpicGamesLauncher/8.1.0-4466624+++Portal+Release-Live UnrealEngine/4.21.0-4466624+++Portal+Release-Live" --resources-dir-path="C:/Program Files (x86)/Epic Games/Launcher/Engine/Binaries/ThirdParty/CEF3/Win64/Resources" --enable-pinch --device-scale-factor=1 --num-raster-threads=4 --enable-main-frame-before-activation --content-image-texture-target=0,0,3553;0,1,3553;0,2,3553;0,3,3553;0,4,3553;0,5,3553;0,6,3553;0,7,3553;0,8,3553;0,9,3553;0,10,3553;0,11,3553;0,12,3553;0,13,3553;0,14,3553;0,15,3553;0,16,3553;1,0,3553;1,1,3553;1,2,3553;1,3,3553;1,4,3553;1,5,3553;1,6,3553;1,7,3553;1,8,3553;1,9,3553;1,10,3553;1,11,3553;1,12,3553;1,13,3553;1,14,3553;1,15,3553;1,16,3553;2,0,3553;2,1,3553;2,2,3553;2,3,3553;2,4,3553;2,5,3553;2,6,3553;2,7,3553;2,8,3553;2,9,3553;2,10,3553;2,11,3553;2,12,3553;2,13,3553;2,14,3553;2,15,3553;2,16,3553;3,0,3553;3,1,3553;3,2,3553;3,3,3553;3,4,3553;3,5,3553;3,6,3553;3,7,3553;3,8,3553;3,9,3553;3,10,3553;3,11,3553;3,12,3553;3,13,3553;3,14,3553;3,15,3553;3,16,3553;4,0,3553;4,1,3553;4,2,3553;4,3,3553;4,4,3553;4,5,3553;4,6,3553;4,7,3553;4,8,3553;4,9,3553;4,10,3553;4,11,3553;4,12,3553;4,13,3553;4,14,3553;4,15,3553;4,16,3553 --disable-accelerated-video-decode --disable-webrtc-hw-vp8-encoding --disable-gpu-compositing --service-request-channel-token=7604173C0C2A263206097E5D1C6C977C --renderer-client-id=2 --mojo-platform-channel-handle=2816 /prefetch:1
;"C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win32\EpicGamesLauncher.exe" com.epicgames.launcher://fortnite
;"C:/Program Files (x86)/Epic Games/Launcher/Portal/Binaries/Win64/EpicGamesLauncher.exe"  com.epicgames.launcher://fortnite -SaveToUserDir -Messaging -ForcedRestart
```
