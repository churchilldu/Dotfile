#Requires AutoHotkey v2.0

; Open downloads folder directly.
; #e::Run "explorer D:\downloads\"
	; WinWait "downloads"
	; WinActivate "downloads"
	
	; return



; sm18 
#HotIf WinActive("ahk_exe sm18.exe")
    XButton1::Send "!{Left}"
	XButton2::Send "!{Right}"
    ^x::Send "^x{Text}[ ] "
#HotIf

; Firefox Tree Style Tab
#HotIf WinActive("ahk_class MozillaWindowClass")
    ^s::Send '+{F1}'
#HotIf

; Golden dict
#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_exe GoldenDict.exe")
    ^c::Send '^+c'
#HotIf