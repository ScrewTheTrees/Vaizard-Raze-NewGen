
if (IsOnline()==true && IsHost()==false)
    {
    clearbuffer(0);
    writebyte(MSG_REQUESTROOM,0)
    writeint(room,0);
    writeint(GetPlayerID(),0)
    
    ScrSendServer(false);
    clearbuffer(0);
    }
