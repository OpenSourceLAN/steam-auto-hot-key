;load the epic launcher to the fortnite window
Run, EpicGamesLauncher.exe com.epicgames.launcher://fortnite, C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64
WinWait,Epic Games Launcher
WinActivate,Epic Games Launcher
WinMove,Epic Games Launcher,, 100, 100, 1500, 800,,

;lazy safety delay
Sleep 20000

;click library
Click 60, 280

;lazy safety delay
Sleep 500

;
Click 500, 190

;lazy safety delay
Sleep 5000

;click install
Click 840, 520
