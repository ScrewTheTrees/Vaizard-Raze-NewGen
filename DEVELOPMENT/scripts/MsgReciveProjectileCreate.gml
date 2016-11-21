
    
    var xx = readdouble(0);
    var yy = readdouble(0);
    var oid = readint(0);

    i = instance_create(xx,yy,oid);
    
    i.creatorID = readint(0);
    i.myroom = readint(0);
    i.facedir = readint(0);
    i.team = readint(0);

    i.hspeed = readdouble(0);
    i.vspeed = readdouble(0);
    
    if (global.isHost==true) ScrSendClient(3,i.myroom,false);
    
    if(i.myroom!=room) with(i) {instance_destroy();}
        
clearbuffer(0);
