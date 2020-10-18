SetTitleMatchMode 2
#SingleInstance ignore
#NoTrayIcon

; Win + Alt + D
!#D::

	;https://stackoverflow.com/questions/53109281/what-is-the-windows-workerw-windows-and-what-creates-them
	ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

	; Toggle between displaying and hiding the desktop icons
	If DllCall("IsWindowVisible", UInt, HWND)
		WinHide, ahk_id %HWND%
	Else
		WinShow, ahk_id %HWND%