
    entID = readint(0);
    
    i = GetEntityFromID(entID);
    i.ownerID = readint(0);
    i.controlled = readbyte(0);
    i.myroom = readint(0);
    i.facedir = readint(0);
    
    
    
    if global.isHost==true
        {
        ScrSendClient(0,playerID,false);
        }
    
    
    
clearbuffer(0);
