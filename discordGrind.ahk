#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

isEnterTriggered := false

^!d::
    if (!isEnterTriggered) {
        SetTimer, PressEnter, 500
        isEnterTriggered := true
    }
return

^!c::
    if (isEnterTriggered) {
        SetTimer, PressEnter, Off
        isEnterTriggered := false
    }
return

PressEnter:
    Send, {Enter}
return