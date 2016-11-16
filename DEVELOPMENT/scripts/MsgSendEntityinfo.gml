
if (IsOnline()==true && ownerID=global.playerID)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYINFO,0)
    writeint(entityID,0);
    writeint(ownerID,0);
    writebyte(controlled,0);
    writeint(myroom,0);
    writeint(facedir,0);
    
    if global.isHost==false ScrSendServer(false);
    else ScrSendClient(0,0,false);
    clearbuffer(0);
    }
