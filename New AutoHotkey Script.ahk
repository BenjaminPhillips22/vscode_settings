+F5::Edit ; Shift-F5 launches the current AutoHotkey script in preferred editor, else Notepad 

^F5::Reload ; Ctrl-F5 reloads the current AutoHotKey script after any edits.



::ftw::Free the whales ; hot strings!
; ^`::^+Tab ; control shift tab


F8::
    Run, %windir%\System32\SnippingTool.exe
    WinWait, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
    WinActivate, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
    WinWaitActive, ahk_class Microsoft-Windows-Tablet-SnipperToolbar
    Send ^n ; !n
    ; Send r
    return



CapsLock::
	KeyWait, CapsLock
	If (A_PriorKey="CapsLock")
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return


#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

f:: send, {Esc}
g:: send, ^f ; find

d:: send, {delete}
b:: send, {backspace}

r:: send, +{f10} ; right click

; h:: send, {left}
; j:: send, {down}
k:: send, {down}
l:: send, {up}

w:: send, ^w
t:: send, ^t

0:: send, ^0		;
1:: send, ^1		;
2:: send, ^2		;
3:: send, ^3

q::
if (A_PriorHotkey <> "q" or A_TimeSincePriorHotkey > 400)
{
    ; Too much time between presses, so this isn't a double-press.
    ; send, {End}
    return
}
send, !{f4}




