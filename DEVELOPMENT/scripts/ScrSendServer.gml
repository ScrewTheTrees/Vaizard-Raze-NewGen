///ScrSendServer(isUDP)

//Since Host always have the same Port and IP gets set upon connection
if argument0==true
    sendmessage(global.udpListen,global.serverIP,global.udpPortHost,0)
else
    sendmessage(global.server,0,0,0)
