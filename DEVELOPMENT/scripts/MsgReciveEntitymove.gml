
    var entID = readdouble(0);
    
    i = GetEntityFromID(entID);
    
    i.facedir = readint(0);
    i.x = readdouble(0);
    i.y = readdouble(0);
    i.hspeed = readdouble(0);
    i.vspeed = readdouble(0);
    
    
    if global.isHost==true
        {
        ScrSendClient(3,i.myroom,false);
        }
    
    
    
clearbuffer(0);
