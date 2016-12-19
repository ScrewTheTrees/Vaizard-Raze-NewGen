
if (IsOnline()==true && global.isHost==true)
    {
    clearbuffer(0);
    writebyte(MSG_MAPSEND,0)
    
    var num = instance_number(Solid)+2;
    
    writeint(num,0);

    for (var i = 0; i < instance_number(Solid); i++)
    {
    with (instance_find(Solid,i))
    
        {
        writedouble(x,0);
        writedouble(y,0);
        writeint(object_index,0);
        }
    }
    with (Entrance0)
    {
        writedouble(x,0);
        writedouble(y,0);
        writeint(object_index,0);
    }
        with (Exit)
    {
        writedouble(x,0);
        writedouble(y,0);
        writeint(object_index,0);
    }
        
    
    ScrSendClient(3,room,false);
    
    clearbuffer(0);
    }
