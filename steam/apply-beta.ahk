
; First argument, name of game to search in your library list
; Second argument, beta code to enter in to the beta code box
; .\apply-beta.exe "Rocket League" SomeBetaCodeHere


WinActivate Steam
WinWaitActive Steam

SLEEP 1000
CLICK 200,51 ; LIBRARY
SLEEP 500
CLICK 37, 84  ; Search
SEND ^a
SEND %1%
SLEEP 500
CLICK Right 37, 136 ;propertie smenu
SLEEP 500
SEND {Up}
Send {ENTER} ; properties window open
SetTitleMatchMode 2
WinWaitActive Properties
SLEEP 500
CLICK 446,43 ; beta tab
SLEEP 500
CLICK 125,  179 ; beta code

SEND %2%

CLICK 389, 177 ; check code

; This loop waits for the beta code valid message
pixel = 
limit = 10
while limit > 0 ; don't keep clicking check code forever
{
	PixelGetColor pixel, 105, 200, RGB

	red := ((pixel & 0xFF0000) >> 16)
	if (red > 0x40)
		break
	CLICK 389, 177 ; check code
	sleep 1000
	limit := limit - 1
}


SLEEP 100

; back to beta select drop down
SEND +{TAB}
SEND +{TAB}

SLEEP 100

; select the first beta
SEND {DOWN}

SLEEP 100

CLICK 554, 576 ; close