///MsgSendEntitycreatePlayer(PlayerID)
if (IsOnline()==true && global.isHost==true)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYCREATE,0)
    writedouble(x,0);
    writedouble(y,0);
    writeint(object_index,0);
    
    
    writeint(entityID,0);
    writeint(ownerID,0);
    writebyte(controlled,0);
    writeint(myroom,0);
    writeint(facedir,0);
    writeint(team,0);
    
    ScrSendClient(1,argument0,false);
    
    clearbuffer(0);
    }
