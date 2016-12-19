///ScrChangeRoom(TransistionObject, Room, Text, EntranceID);

if (!instance_exists(NextRoom))
{
    if argument0<=0
        obj = NextRoom;
    else obj=argument0
    
    var ii = instance_create(0,0,obj);
    ii.nroom = argument1;
    ii.mytext = argument2;
    global.entranceID = argument3;
}

