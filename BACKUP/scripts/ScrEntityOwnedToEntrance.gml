if (IsOwner())
    {
        global.warpTarget = DUMMY;
        
            with (Entrance0)
            {
                if entranceID = global.entranceID
                    global.warpTarget = id;
            }
        if global.warpTarget != DUMMY
            {
            x=global.warpTarget.x;
            y=global.warpTarget.y;
            }
            
    alarm[1]=2;
    }

