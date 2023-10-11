; pass username and password as command line args
; e.g. riot_launcher_login.ahk username@gmail.com password1

uname = %1%
pword = %2%

Run, RiotClientServices.exe, C:\Riot Games\Riot Client (Esports)

WinWait, Riot Client Main

WinActivate, Riot Client Main

WinMove,Riot Client Main,, 100, 100,,,,

Sleep 5000

MouseMove, 100, 270
Click

Send % uname

Send {Tab}

SendRaw % pword

Send {Enter}
