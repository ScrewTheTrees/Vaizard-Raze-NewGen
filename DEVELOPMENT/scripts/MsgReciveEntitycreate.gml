
    
    var xx = readdouble(0);
    var yy = readdouble(0);
    var oid = readint(0);

    i = instance_create(xx,yy,oid);
    
    i.entityID = readint(0);
    i.ownerID = readint(0);
    i.controlled = readbyte(0);
    i.myroom = readint(0);
    i.facedir = readint(0);
    i.team = readint(0);
    
    
    //Extra layer of failsafe, incase sync is a bit out of sync :)
    if (i.myroom != room && i.persistent==false)
        with (i) { instance_destroy(); }
    
    
    
clearbuffer(0);
