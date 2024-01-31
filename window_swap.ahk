; Script by himan7991

#NoEnv ; Prevents environment variables from being inherited by launched applications.
#SingleInstance force
SendMode Input ; Sets the keyboard and mouse to send input directly.

; Display message box to notify the user that the script started running.
; The message will dissappear and then capture starts after left mouse click.
MsgBox,,,Click first window, 1
KeyWait, LButton, D
KeyWait, LButton
WinGetActiveStats, win1, w1, h1, x1, y1

; Display message box prompting to click second window, then capture starts after left mouse click.
MsgBox,,,Click second window, 1
KeyWait, LButton, D
KeyWait, LButton
WinGetActiveStats, win2, w2, h2, x2, y2

; Swap positions of windows based on captured stats.
WinMove, %win1%,,x2,y2,%w2%,%h2%
WinMove, %win2%,,x1,y1,%w1%,%h1%

WinActivate, %win2% ; Activate the second window.

ExitApp

; Exit the script when Esc key is pressed.
Esc:: 
	MsgBox,,,Cancelling, 1
	ExitApp
