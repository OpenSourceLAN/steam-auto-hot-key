
; Sets the user's steam name to the command line arguments of the script

WinMinimizeAll

Run, Steam.exe, C:\Program Files (x86)\Steam

WinActivate Steam
WinWaitActive Steam
WinMove,Steam,, 100, 100, 1200, 800,,

Sleep 2000
Click 1020, 20 ; friends drop down

Sleep 100
Click 50, 10

Sleep 5000
Click 850, 300

Sleep 5000
Click 200, 260

Sleep 10000

Send {TAB}{Ctrl Down}a{Ctrl Up}{BackSpace} ; clear the profile anme field

Send %1% ; write name (command line args)

Send {Enter} ; save the change

Sleep 10000

Click 200, 365

Send {TAB}{Ctrl Down}a{Ctrl Up}{BackSpace} ; clear the profile anme field

Send %1% ; write name (command line args)

Send {Enter} ; save the change

