
    var rm = readint(0);
    var ID = readint(0);
    
    global.tempid = ID;
    Entity.tempData = rm;
    
    with (Entity)
    {
        if persistent==false
        {
            if myroom==tempData
            {
                MsgSendEntitycreatePlayer(global.tempid);
            }
        }
    }
    
    
    clearbuffer(0);
