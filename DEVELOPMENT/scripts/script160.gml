
if global.isHost == false && IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_PLAYERINFO)
    writeint(global.udpPort);
    ScrSendServer(false);
    clearbuffer(0);
    }
