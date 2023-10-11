; Written by Sunfyre and Rededog
; Modified by alch, 2021
; Modified by Unlucky, 2022 west
; First argument, name to set as profile name

WinActivate Steam
WinWait, Steam
SLEEP 3000

SEND <#{Up} ;Maximize Steam
SEND <#{Up} ;Really Maximize Steam
SEND <#{Up} ;Too Much Maximize Steam
SEND <#{Down} ;Undo Some Maximize Steam
SEND <#{Up} ;Actually Maximize Steam
SLEEP 500

; click on something not the profile to ensure a fresh load of the profile
CLICK, 200, 50 ; LIBRARY
SLEEP 1000

Click, 1750, 20 ; Name Drop down
SLEEP 500
MouseMove 0,30,2,R ; Mouse over View My Profile
SLEEP 500
CLICK
SLEEP 10000 ; Wait for profile load (this can be slow AF)
CLICK, 1180, 260 ; Edit Profile
SLEEP 500
MouseMove 10,0,2,R ; Mouse over View My Profile
SLEEP 500
CLICK, 1194, 286 ; Edit Profile
SLEEP 5000

; Scrolls to top of the page
SEND {Home}

; Set Profile Name
CLICK, 775, 505 ; Profile Name input box
SEND ^{a}
SLEEP 1000
SEND %1% %2% ; Enter parameters
SLEEP 500

; Set Real Name
CLICK, 775, 595 ; Real Name input box
SEND ^{a}
SLEEP 1000
SEND %1% %2% ; Enter parameters
SLEEP 500

; Set Custom URL
CLICK, 775, 686 ; Custom URL box
Sleep 500
Send ^a
SEND %3%
SLEEP 500

; tab over to Summary textbox
SEND {Tab}
SEND {Tab}

; Set Summary
SEND ^{a}
SLEEP 1000
SEND No information given.
SLEEP 1000

; Set Country to do not display
; this provides a consistent height for the page
CLICK, 775, 890 ; Country drop down
MouseMove 0,55,2,R ; Mouse over: (Do not display)
SLEEP 500
CLICK
SLEEP 500

; Set Avatar to PAX logo
; This has its own rate limiting separate from profile edits
; Moving this to its own job
;CLICK, 688, 717 ; Choose file
;SLEEP 1000
;SEND \\PCFP-WINGEN\Public\PAXIcon\PAX-Logo.png
;SEND {Enter}
;CLICK, 888, 717 ; Upload

; SAVE!
SEND {Home} ; Scrolls to the top of the page
CLICK, 775, 500 ; Profile Name input box
SLEEP 500
Send {ENTER} ; Save
SLEEP 5000


CLICK 200,51,2 ; Hover over LIBRARY
SLEEP 500

