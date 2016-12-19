///MsgSendMissionNextRoom(Room, EntranceID);

if global.isHost == true && IsOnline()==true
{
    clearbuffer(0);
    writebyte(MSG_MISSION_NEXTROOM,0);
    writeint(argument0,0);
    writebyte(argument1);
    ScrSendClient(3,room,false);
    clearbuffer(0);
}
