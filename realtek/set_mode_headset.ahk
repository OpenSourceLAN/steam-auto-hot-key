#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Send {LWin}

Sleep 100

Send Realtek Audio Console

Sleep 1000

Send {Enter}

Sleep 2000

Send {Tab}{Tab}{Tab}

Sleep 100

Send {Enter}

Sleep 100

Send {Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}

Sleep 100

Send {Up}{Up}{Up}{Up}{Up}{Up}

Sleep 100

Send {Down}{Down}{Down}{Down}{Down}{Down}

Sleep 10000

WinClose,Realtek Audio Console