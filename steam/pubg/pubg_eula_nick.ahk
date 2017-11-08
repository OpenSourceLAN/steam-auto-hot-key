; accept steam eula and set pubg nickname

; first cli arg must be steam login username

; accept the eula and set the account nickname based on the steam account username
; must be in the form: 'tu01000021pc14' it will take the number at the end and
; prepend 'PAX PUBG' resulting in 'PAX PUBG 14' for example

; it doesn't close the game so you can confirm it was successful

Input = %1%

StringSplit, Array, Input, "pc"

UserName = %Array3%

Run, steam://rungameid/578080

WinWait,PLAYERUNKNOWN'S BATTLEGROUNDS
WinActivate,PLAYERUNKNOWN'S BATTLEGROUNDS

Click 232, 425 ; accept eula

Sleep 120000 ; long dumb sleep while waiting for game to launch

WinWait,PLAYERUNKNOWN'S BATTLEGROUNDS
WinActivate,PLAYERUNKNOWN'S BATTLEGROUNDS
Click 100,100
Send {Tab}{Enter} ; accept beta message

Sleep 5000

Send {Tab} ; put cursor in nickname box

Sleep 1000

Send % "PAX_PC_" . UserName ; enter nickname

Sleep 1000

Send {Tab}{Enter} ; set nickname

; player character can now be setup
