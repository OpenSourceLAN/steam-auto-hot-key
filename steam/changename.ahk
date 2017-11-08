
; Sets the user's steam name ot the command line arguments of the script

WinActivate Steam
WinWaitActive Steam
Sleep 500
Click 32, 13 ; file
Sleep 500
Send S{ENTER} ; settings
Sleep 500
WinActivate Settings
Sleep 500
Click 50, 78 ; Friends
Sleep 500
Click 311, 67, 3 ; Select all text in profile name
Sleep 500
Send %1% ; Write name (command line args)
Sleep 500
SEND +{TAB} ; Okay
SEND +{TAB}
SEND {ENTER}
