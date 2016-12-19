if global.isHost == true&& IsOnline()==true
{
    clearbuffer(0);
    writebyte(MSG_PLAYERINFOREQUEST,0);
    ScrSendClient(0,0,false);
    clearbuffer(0);
}
