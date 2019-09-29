
; Sets the user's steam name to the command line arguments of the script

Run, Steam.exe, C:\Program Files (x86)\Steam

WinActivate Steam
WinWaitActive Steam
WinMove,Steam,, 100, 100, 1500, 800,,

Sleep 2000
Click 100, 20 ; friends drop down

Sleep 50
Send {DOWN}{DOWN}{ENTER} ; change name button

Sleep 2000

Click 300, 250

Send {TAB}{Ctrl Down}a{Ctrl Up}{BackSpace} ; clear the profile anme field

Send %1% ; write name (command line args)

Send {Enter} ; save the change
