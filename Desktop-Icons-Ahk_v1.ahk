; Toggle desktop icons visibility

#Requires AutoHotkey <2
SetTitleMatchMode 2
#SingleInstance force
#NoTrayIcon

; Win + Alt + D
!#D::

  ControlGet, hwnd, Hwnd,, SysListView321, ahk_class Progman
  if !hwnd {
    WinGet, list, List, ahk_class WorkerW
    Loop %list% {
      ww := list%A_Index%
      ControlGet, hwnd, Hwnd,, SysListView321, ahk_id %ww%
      if hwnd
        break
    }
  }

  if hwnd {
    if DllCall("IsWindowVisible", "UInt", hwnd)
      WinHide, ahk_id %hwnd%
    else
      WinShow, ahk_id %hwnd%
  }
return