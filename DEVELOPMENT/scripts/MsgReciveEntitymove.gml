
    entID = readint(0);
    
    i = GetEntityFromID(entID);
    
    i.facedir = readint(0);
    i.x = readdouble(0);
    i.y = readdouble(0);
    i.hspeed = readdouble(0);
    i.vspeed = readdouble(0);
    
    i.pressRight = readbyte(0);
    i.pressLeft = readbyte(0);
    i.pressUp = readbyte(0);
    i.pressDown = readbyte(0);
    i.pressJump = readbyte(0);
    
    if global.isHost==true
        {
        ScrSendClient(3,i.myroom,true);
        }
    
    
    
clearbuffer(0);
