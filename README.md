# Streamer.bot AutoHotKey

Execute your Streamer.bot actions from AutoHotKey

Utilizes the Streamer.bot [UDP Server](https://docs.streamer.bot/api/servers/udp) for real-time execution

## 🔥Quick Setup

```ahk
#Requires AutoHotkey >=2.0-
#Include lib/_streamerbot.ahk
#SingleInstance Force

; Set to your Streamer.bot UDP Server Host/Port
sb := StreamerbotUDP("127.0.0.1", 4242)

; Execute Action on F12
F12::
{
  ; Set to your desired Action ID from Streamer.bot
  sb.DoAction("94754342-3397-4dbc-8b16-123906b34015")
}

; Add as many hotkeys / actions as needed...
```

## 🙏 Thanks

Would not be possible without the work of awesome AHK community members!

- https://github.com/TheArkive/Socket_ahk2
- https://github.com/G33kDude/Socket.ahk