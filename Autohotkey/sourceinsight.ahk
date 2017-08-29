WinActivate, ahk_class si_Frame
    WinActivate ; use the window found above
    Send !g
    Send ^v`r
    Send !{F8}
return
