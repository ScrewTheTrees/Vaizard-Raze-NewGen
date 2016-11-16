var playerid=readushort(0);
clearbuffer(0);


if global.isHost=true
    {
    clearbuffer(0);
    writebyte(MSG_DEADPACKET,0)
    writeushort(playerid,0);
    ScrSendClient(1,playerid,true)
    clearbuffer(0);
    }
       
