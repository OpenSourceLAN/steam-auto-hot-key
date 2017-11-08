#Include WaitPixelColor.ahk

; launch the launcher
Run, Battle.net.exe, C:\Program Files (x86)\Battle.net\

; take the battle.net launcher offline
WinWait,Blizzard Battle.net Login
WinActivate,Blizzard Battle.net Login
Sleep 2000
MouseMove, 323, 155
Click
MouseMove, 220, 280
Click

; start the game install (if already installed this will trigger an update)
Run, Battle.net.exe --game=hs_beta --install, C:\Program Files (x86)\Battle.net\

; click the start install button if asked
WinWait,Hearthstone Installation,,60
if ErrorLevel
{
    Exit
}
WinActivate,Hearthstone Installation

WaitPixelColor(0xFFFFFF, 626, 415)

MouseMove, 626, 415
Click
