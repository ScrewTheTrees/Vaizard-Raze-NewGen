if global.isHost==false
    {
    i=GetEntityFromID(readint(0));
    ObjEntityController.target=i;
    i.controlled = true;
    i.ownerID = global.playerID;
    }
    
clearbuffer(0);

