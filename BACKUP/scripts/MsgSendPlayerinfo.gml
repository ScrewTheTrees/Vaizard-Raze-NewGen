
if global.isHost == false && IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_PLAYERINFO,0)
    writeint(global.udpPort,0);
    writeint(room,0);
    writebyte(global.inMission,0);
    writebyte(global.readyToGetMap,0);
    writebyte(global.hasMap,0);
    
    ScrSendServer(false);
    clearbuffer(0);
    }
