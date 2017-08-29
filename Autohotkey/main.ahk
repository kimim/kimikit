;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

+Capslock::Capslock
Capslock::Ctrl

#include outlook.ahk

#,:: send #t{tab}{tab}{left}{enter}

#a::
IfWinActive, KimiAgenda
{
    WinMinimize
    return
}
IfWinExist, KimiAgenda
{
    WinActivate ; use the window found above
    return
}
Run %HOME%\kimikit\bin\agd.bat
return

#c::
Run %windir%\system32\calc.exe
return

#\::
WinGetActiveTitle, Title
IfWinExist, KimiAgenda
{
    WinActivate ; use the window found above
    Send ^xm\
}
; WinActivate %Title%
return

#w::
IfWinActive, Double Commander
{
    WinMinimize
    return
}
IfWinExist, Double Commander
{
    WinActivate ; use the window found above
    return
}
Run dc
return


#+i::
RunWait pythonw %HOME%\kimikit\kimipy\getid.pyw
Send ^v
return

#i::
RunWait pythonw %HOME%\kimikit\kimipy\getdate.pyw
Send ^v
return

#k::
Run glass
return

#f::
Run "C:\Program Files\Mozilla Firefox\firefox.exe"
return

#+F::
IfWinActive, Mozilla Firefox
{
    WinMinimize
    return
}
IfWinExist, Mozilla Firefox
{
    WinActivate ; use the window found above
    return
}
Run "C:\Program Files\Mozilla Firefox\firefox.exe"
return

#n::
Run notepad
return

#s::
Run everything
return

#include terminal.ahk

#+Down::
WinMinimize, A
return

PrintScreen::
Run SnippingTool
return
