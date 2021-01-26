; Author Sam Babushkin
; AutoIT 3.8
; Installs proxy network settings, places some URLs on desktip and IE security settings on user PC to work with orient express bank system.
;
func _main()
   ;circut close Internet Explorer
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100)
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100)
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100)
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100)
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100)
   WinClose("[CLASS:IEFrame]", "")
   WinKill("[CLASS:IEFrame]", "")
   sleep (100) 
   
   ;w8 some 
   sleep(2000)
   
   ;shortcut
;FileCreateShortcut("https://somedns.somedns.ru/webpartner/", "C:\Documents and Settings\All Users\Desktop\somedns.somedns.ru.url")
;FileCreateShortcut("https://somedns.somedns.ru/webpartner/", "C:\ProgramData\Desktop\somedns.somedns.ru.url")
FileCreateShortcut("https://somedns.somedns.ru/webpartner/", "Õœ‘ ¡Î‡„ÓÒÓÒÚÓˇÌËÂ.url")
FileCreateShortcut("https://somedns.somedns.ru/webpartner/", @DesktopDir &"\Õœ‘ ¡Î‡„ÓÒÓÒÚÓˇÌËÂ")
;old script ver 1.0-1.1.2
;InetGet("ftp://192.168.219.219/ulan-ude/GIT/blago.txt", "C:\Documents and Settings\All Users\–‡·Ó˜ËÈ ÒÚÓÎ\blago.kitNPF.ru.url") 

;proxy enable
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings", "ProxyEnable", "REG_DWORD", "1")
;proxy server define
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings", "ProxyServer", "REG_SZ", "4212-ss-mwg:3312")
;security zone define
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\somedns.ru")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\somedns.ru\secure")
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\somedns.ru\secure", "https", "REG_DWORD", "2")

#cs ;ssl 3.0 enable
security comment
dword:00000000
;SSL2.0 checked
dword:0000000b
;SSL3.0 checked
dword:00000023 
;TLS1.0 checked
dword:00000083 
;SSL2.0 + SSL3.0 checked
dword:0000002b
;SSL2.0 + TLS1.0 checked
dword:0000008b
;SSL3.0 + TLS1.0 checked
dword:000000a3 
;¬ÒÂ ‚˚·‡Ì˚
dword:000000ab
#Ce
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings", "SecureProtocols", "REG_DWORD", "37")

;dont use proxy for local
;Local 192.168.*.*;10.*.*.*;somedns.ru;*.express-bank.ru;*.orient.root.biz;<local>
RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings", "ProxyOverride", "REG_SZ", "192.168.*.*;10.*.*.*;somedns.ru;*.express-bank.ru;*.orient.root.biz;<local>")






MsgBox(0,"", "Õ‡ÒÚÓÈÍ‡ ÔÓËÁ‚Â‰ÂÌ‡, «‡ÍÓÈÚÂ œ   Â‰ËÚ, œ   ÷,œÓ˜Ú‡, Citrix, moibank")
EndFunc
_main()
