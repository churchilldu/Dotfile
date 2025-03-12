CoordMode "ToolTip"
#Include SystemThemeAwareToolTip.ahk
OnClipboardChange(ClipChanged)

ClipChanged(Type) {
    if (Type = 1) {  ; only for text changes
        copiedText := A_Clipboard  ; use built‐in variable A_Clipboard
        xPos := A_ScreenWidth - 200  ; adjust these values as needed
        yPos := A_ScreenHeight - 50
        ToolTip(copiedText, xPos, yPos)
	SetTimer () => ToolTip(), -2000
    }
}
