
if (IsOnline()==true && ownerID=global.playerID)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYMOVE,0)
    writedouble(entityID,0);
    writeint(facedir,0);
    writedouble(x,0);
    writedouble(y,0);
    writedouble(hspeed,0);
    writedouble(vspeed,0);
    
    if global.isHost==false ScrSendServer(false);
    else ScrSendClient(3,room,false);
    clearbuffer(0);
    }
