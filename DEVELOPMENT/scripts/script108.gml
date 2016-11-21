
    
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
    
    
    
    
clearbuffer(0);
