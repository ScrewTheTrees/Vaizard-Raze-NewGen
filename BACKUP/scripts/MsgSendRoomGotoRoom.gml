///MsgSendRoomGotoRoom(TransistionObject , Room, Text ,EntranceID);

if global.isHost == true && IsOnline()==true
{
    clearbuffer(0);
    writebyte(MSG_ROOM_GOTOROOM,0);
    writeint(argument0,0);
    writeint(argument1,0);
    writestring(argument2,0);
    writebyte(argument3,0);
    ScrSendClient(3,room,false);
    clearbuffer(0);
}
