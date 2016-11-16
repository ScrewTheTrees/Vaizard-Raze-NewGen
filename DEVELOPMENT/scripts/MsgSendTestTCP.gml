
if IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_TESTTCP,0)
    if global.isHost == false ScrSendServer(false);
    else ScrSendClient(0,0,false);
    show_message("SentTCP");
    clearbuffer(0);
    }
