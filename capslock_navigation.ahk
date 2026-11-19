#Requires AutoHotkey v2.0

; 请求管理员权限
if !A_IsAdmin {
    Run '*RunAs "' A_AhkPath '" "' A_ScriptFullPath '"'
    ExitApp
}

; ============================================================
; CapsLock 方向键映射：导航 / 跳转
; ============================================================

; CapsLock+P → 上
CapsLock & p::Send("{Up}")

; CapsLock+N → 下
CapsLock & n::Send("{Down}")

; CapsLock+B → 左
CapsLock & b::Send("{Left}")

; CapsLock+F → 右
CapsLock & f::Send("{Right}")

; CapsLock+A → 行首
CapsLock & a::Send("{Home}")

; CapsLock+E → 行尾
CapsLock & e::Send("{End}")
