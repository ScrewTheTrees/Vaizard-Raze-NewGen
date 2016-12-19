
    entID = readint(0);
    
    i = GetEntityFromID(entID);
    i.ownerID = readint(0);
    i.controlled = readbyte(0);
    i.myroom = readint(0);
    i.facedir = readint(0);
    i.moveType = readint(0);
    
    i.weapon_animation_frame = readint(0);
    i.weapon_animation_playing = readbyte(0);
    i.weapon_animation_repeat = readbyte(0);
    i.weapon_animation_arms_animate = readbyte(0);
    i.weapon_animation_endspr = readint(0);
    i.weapon_animation_arms_endspr = readint(0);
    
    
    for (var ii=0; ii<=4; ii++)
        i.color[ii]=readint(0);
        
    for (var ii=0; ii<=7; ii++)
        {
        tempSprite=readint(0);
        if (i.sprite[ii]==tempSprite) {}
            else i.sprite[ii] = tempSprite;
        }
        
    
    if global.isHost==true
        {
        ScrSendClient(0,playerID,false);
        }
    
    
    
clearbuffer(0);
