if global.isHost == false && IsOnline()==true
{
    clearbuffer(0);
    writebyte(MSG_DEADPACKET,0);
    writeushort(global.playerID,0)
    ScrSendServer(true);
    clearbuffer(0);
}
