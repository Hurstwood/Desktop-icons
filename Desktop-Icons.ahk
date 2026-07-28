; Toggle desktop icons visibility

#Requires AutoHotkey v2
SetTitleMatchMode(2)
#SingleInstance force
#NoTrayIcon

; Win + Alt + D
!#D::{
  hwnd := ControlGetHwnd("SysListView321", "ahk_class Progman")
  if !hwnd {
    for ww in WinGetList("ahk_class WorkerW") {
      hwnd := ControlGetHwnd("SysListView321", "ahk_id " ww)
      if hwnd
        break
    }
  }

  if hwnd {
    if DllCall("IsWindowVisible", "Ptr", hwnd)
      WinHide("ahk_id " hwnd)
    else
      WinShow("ahk_id " hwnd)
  }
}
