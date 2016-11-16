///MsgSendPlayerid(PlayerID)
if global.isHost == true && IsOnline()==true
    {
    clearbuffer(0);
    writebyte(MSG_PLAYERID,0)
    writeint(argument0,0);
    ScrSendClient(1,argument0,false);
    clearbuffer(0);
    }
