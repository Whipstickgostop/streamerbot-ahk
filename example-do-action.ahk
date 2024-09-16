#Requires AutoHotkey >=2.0-
#Include lib/_streamerbot.ahk
#SingleInstance Force

sb := StreamerbotUDP("127.0.0.1", 4242)

; Execute Action on F12
F12::
{
  sb.DoAction("94754342-3397-4dbc-8b16-123906b34015")
}

; Execute Action on F11
F11::
{
  sb.DoAction("94754342-3397-4dbc-8b16-123906b34015")
}

; Add as many actions as needed...