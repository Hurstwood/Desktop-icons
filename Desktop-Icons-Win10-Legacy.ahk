; Toggle desktop icons visibility
; Tested and working on Windows 10
;
; I have no means to test whether the Windows 11 version will also work on Windows 10
; so i will leave this as a legacy version for those that still use Windows 10

#Requires AutoHotkey <2
SetTitleMatchMode 2
#SingleInstance force
#NoTrayIcon

; Win + Alt + D
!#D::

	ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

	If DllCall("IsWindowVisible", UInt, HWND)
		WinHide, ahk_id %HWND%
	Else
		WinShow, ahk_id %HWND%