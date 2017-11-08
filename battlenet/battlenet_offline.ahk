; run the battle.net launcher in offline mode, allowing games to 
; update without login of the launcher

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

; installed games will now update