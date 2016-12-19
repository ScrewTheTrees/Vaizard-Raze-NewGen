///MsgSendPlayerid(PlayerID)
if global.isHost == true && IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_PLAYERID)
    writeint(argument0);
    ScrSendClient(1,argument0,false);
    clearbuffer(0);
    }
