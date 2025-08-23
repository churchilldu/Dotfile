#Requires AutoHotkey v2.0

; Open downloads folder directly.
; #e::Run "explorer D:\downloads\"
	; WinWait "downloads"
	; WinActivate "downloads"
	
	; return

; Terminal
; #r::Run "Terminal"

; sm 
#HotIf WinActive("ahk_exe sm19.exe")
    XButton1::Send "!{Left}"
	XButton2::Send "!{Right}"
    ^x::Send "^x{Text}[ ] "
    Esc::Send "+^G"
#HotIf

; Librewolf 
#HotIf WinActive("ahk_exe librewolf.exe")
    ^s::Send '+{F1}'
    ^n::^j
    ^p::^k
#HotIf

; Golden dict
#HotIf WinActive("ahk_exe GoldenDict.exe")
    ^c::Send '^+c'
#HotIf

; Spotify
#HotIf WinActive("ahk_exe Spotify.exe")
    Esc::WinHide "A"
#HotIf

; Telegram
#HotIf WinActive("ahk_exe Telegram.exe")
    Esc::WinMinimize "A"
#HotIf

; Explorer
#HotIf WinActive("ahk_exe explorer.exe")
    Esc::WinKill "A"
#HotIf

; Zotero
#HotIf WinActive("ahk_exe zotero.exe")
    Esc::Send "#+z" ; Traymond shortcut
    XButton1::Send "!{Left}"
	XButton2::Send "!{Right}"
#HotIf

; Obsidian
#HotIf WinActive("ahk_exe obsidian.exe")
    ; Esc::Send "#+z" ; Traymond shortcut
#HotIf
