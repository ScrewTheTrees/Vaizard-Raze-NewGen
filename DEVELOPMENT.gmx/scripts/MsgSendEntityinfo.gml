
if (IsOnline()==true)
    {
    clearbuffer(0);
    writebyte(MSG_ENTITYINFO,0)
    writeint(entityID,0);
    writeint(ownerID,0);
    writebyte(controlled,0);
    writeint(myroom,0);
    writeint(facedir,0);
    writeint(moveType,0);
    
    writeint(weapon_animation_frame,0);
    writebyte(weapon_animation_playing,0);
    writebyte(weapon_animation_repeat,0);
    writebyte(weapon_animation_arms_animate,0);
    writeint(weapon_animation_endspr,0);
    writeint(weapon_animation_arms_endspr,0);
    
    for (var i=0; i<=4; i++)
        writeint(color[i],0);
        
    for (var i=0; i<=7; i++)
        writeint(sprite[i],0);
    
    
    if global.isHost==false ScrSendServer(false);
    else ScrSendClient(0,0,false);
    clearbuffer(0);
    }
