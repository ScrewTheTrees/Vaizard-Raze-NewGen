//ForceEntityControl(PlayerID,EntityID)

if (IsHost())
{
    MsgSendForceControl(argument0,argument1);
    
    i=GetEntityFromID(argument1);
    i.controlled = true;
    i.ownerID = argument0;
    
    with(i) 
    {
        MsgSendEntityinfo();
    }
}
