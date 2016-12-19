
if (IsOnline()==true)
    {
    clearbuffer(0);
    writebyte(MSG_PROJECTILECREATE,0)
    writedouble(x,0);
    writedouble(y,0);
    writeint(object_index,0);
    
    
    writeint(creatorID,0);
    writeint(myroom,0);
    writeint(facedir,0);
    writeint(team,0);
    writeint(image_blend,0);
    
    writedouble(hspeed,0);
    writedouble(vspeed,0);
    
    if (global.isHost==true) ScrSendClient(0,room,false);
    else ScrSendServer(false);
    
    clearbuffer(0);
    }
