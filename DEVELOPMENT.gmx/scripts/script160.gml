if global.isHost == true&& IsOnline()==true
{
    clearbuffer(0);
    writebyte(MSG_MISSION_NEXTROOM,0);
    ScrSendClient(0,0,false);
    clearbuffer(0);
}
