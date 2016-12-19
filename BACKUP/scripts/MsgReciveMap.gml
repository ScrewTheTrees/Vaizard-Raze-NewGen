
    var iMax = readint(0);    
    
    for (var i = 0; i < iMax; i++)
    {
        var xx = readdouble(0);
        var yy = readdouble(0);
        var oid = readint(0);
    
        instance_create(xx,yy,oid);
    }
    
clearbuffer(0);
