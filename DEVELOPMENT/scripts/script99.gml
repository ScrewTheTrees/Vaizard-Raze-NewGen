
if (IsOnline()==true && ownerID=global.playerID)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYINFO,0)
    writedouble(entityID,0);
    writedouble(ownerID,0);
    writebyte(controlled,0);
    writeint(myroom,0);
    writeint(facedir,0);
    
    if global.isHost==false ScrSendServer(false);
    else ScrSendClient(2,global.playerID,false);
    clearbuffer(0);
    }
