;load the epic launcher to the fortnite window
Run, EpicGamesLauncher.exe com.epicgames.launcher://fortnite, C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64
WinWait,Epic Games Launcher
WinActivate,Epic Games Launcher
WinMove,Epic Games Launcher,, 100, 100, 1500, 800,,

;lazy safety delay
Sleep 2000

;click install
MouseMove, 260, 500
Click

;lazy safety delay
Sleep 2000

;use defaults click install
MouseMove, 850, 500
Click

;wait for the friends window to appear
WinWait,Add Friend
WinActivate,Add Friend

;close the friends window
MouseMove, 1000, 20
Click