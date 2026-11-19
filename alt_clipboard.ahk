#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

; ============================================================
; Alt 快捷键映射：剪切 / 复制 / 粘贴
; ============================================================

; Alt+X → 剪切
!x::Send "^x"

; Alt+C → 复制
!c::Send "^c"

; Alt+V → 粘贴
!v::Send "^v"
