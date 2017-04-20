if global.isHost==false
    {
    d= readint(0)
    i=GetEntityFromID(d);
    ObjEntityController.target=i;
    ObjEntityController.spectate=false;
    i.controlled = true;
    i.ownerID = global.playerID;
    room_goto(i.myroom);
    show_message(d);
    }
    
clearbuffer(0);

