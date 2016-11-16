
if (IsOnline()==true && ownerID=global.playerID)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYMOVE,0)
    writeint(entityID,0);
    writeint(facedir,0);
    writedouble(x,0);
    writedouble(y,0);
    writedouble(hspeed,0);
    writedouble(vspeed,0);
    
    writebyte(pressRight,0);
    writebyte(pressLeft,0);
    writebyte(pressUp,0);
    writebyte(pressDown,0);
    writebyte(pressJump,0);
    
    if global.isHost==false ScrSendServer(true);
    else ScrSendClient(3,room,true);
    
    }
clearbuffer(0);
