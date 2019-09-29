; pass username and password as command line args
; e.g. epic_launcher_login.ahk username@gmail.com password1

uname = %1%
pword = %2%

Run, EpicGamesLauncher.exe com.epicgames.launcher://fortnite, C:\Program Files (x86)\Epic Games\Launcher\Engine\Binaries\Win64

WinWait,Epic Games Launcher

WinActivate,Epic Games Launcher

WinMove,Epic Games Launcher,, 100, 100, 1500, 800,,

Sleep 2000

MouseMove, 100, 100
Click

Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}

Send % uname

Send {Tab}

Send % pword

Send {Enter}
