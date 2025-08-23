#Requires AutoHotkey v2.0
#Include SystemThemeAwareToolTip.ahk
OnClipboardChange(ClipChanged)

ClipChanged(Type) {
    if (Type = 1) {  ; only for text changes
        ToolTip(SubStr(A_Clipboard, 1, 100))
        SetTimer () => ToolTip(), -1500
    }
}
