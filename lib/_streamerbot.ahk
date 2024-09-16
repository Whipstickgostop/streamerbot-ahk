#Requires AutoHotkey >=2.0-
#Include _socket.ahk

; Streamer.bot UDP Server Connection
class StreamerbotUDP
{
  __New(host := "127.0.0.1", port := 4242) {
    this._socket := winsock("client", 0, "IPV4", "UDP", "DGram")
    this._socket.connect(host, port)
  }

  ; Execute Streamer.bot Action
  DoAction(id) {
    payload := Format('{"request": "DoAction", "action": { "id": "{1}" }}', id)
    strbuf := Buffer(StrLen(payload)+1, 0)
    StrPut(payload, strbuf, "UTF-8")
    this._socket.Send(strbuf)
  }
}