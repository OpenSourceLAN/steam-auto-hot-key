; smite needs to be logged into an account to update properly :(

; script will:
; - run the launcher and login
; - let the launcher update
; - run the launcher again and login
; - game will now update a-ok

; smite account details
; username smiteupdater
; password smiteupdater
; email mr_salamy@hotmail.com


; includes
#Include WaitPixelColor.ahk

; launch the launcher
Run, HirezLauncherUI.exe game=300 product=17, C:\Program Files (x86)\Hi-Rez Studios

; wait for it
WinWait,Smite
WinActivate,Smite

; login
Send smiteupdater{Tab}smiteupdater{Enter}

; wait for smite to exit with popup if this doesn't happen then don't care
WinWaitClose Smite

Sleep 60000

; launch the launcher
Run, HirezLauncherUI.exe game=300 product=17, C:\Program Files (x86)\Hi-Rez Studios

; wait for it
WinWait,Smite
WinActivate,Smite

; login
Send smiteupdater{Tab}smiteupdater{Enter}
