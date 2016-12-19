
if (IsOnline()==true && global.isHost==true)
    {
    clearbuffer(0);
    writebyte(MSG_MAPSEND,0)
    writedouble(x,0);
    writedouble(y,0);
    writeint(object_index,0);
    
    
    writeint(entityID,0);
    writeint(ownerID,0);
    writebyte(controlled,0);
    writeint(myroom,0);
    writeint(facedir,0);
    writeint(team,0);
    
    if persistent==true ScrSendClient(0,0,false);
    else ScrSendClient(3,room,false);
    
    clearbuffer(0);
    }
