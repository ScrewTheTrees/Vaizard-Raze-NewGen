
if IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_TESTUDP,0)
    if global.isHost == false ScrSendServer(true);
    else ScrSendClient(0,0,true);
    show_message("SentUDP");
    clearbuffer(0);
    }
