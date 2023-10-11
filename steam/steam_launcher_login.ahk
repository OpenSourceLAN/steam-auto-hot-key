; pass username and password as command line args
; e.g. steam_launcher_login.ahk username@gmail.com password1

SetKeyDelay , 30, 30

WinMinimizeAll

uname = %1%
pword = %2%

Run, Steam.exe, C:\Steam

WinWait, Sign in to Steam

WinRestore, Sign in to Steam

WinMove,Sign in to Steam,, 100, 100,,,,

WinActivate, RSign in to Steam

Sleep 5000

Send {Ctrl Down}a{Ctrl Up}{BackSpace}

ControlSend,, % uname

Sleep 100

Send {Tab}

Sleep 100

Send {Ctrl Down}a{Ctrl Up}{BackSpace}

ControlSend,, % pword

Sleep 100

Send {Enter}
