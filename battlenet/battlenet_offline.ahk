; run the battle.net launcher in offline mode, allowing games to 
; update without login of the launcher

; launch the launcher
Run, Battle.net.exe, C:\Program Files (x86)\Battle.net\

; take the battle.net launcher offline
WinWait, Battle.net Login
WinActivate, Battle.net Login
Sleep 5000
MouseMove, 323, 176
Click
MouseMove, 200, 500
Click

; installed games will now update