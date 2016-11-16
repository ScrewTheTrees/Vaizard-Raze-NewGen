///ScrSendClient( All[0] Defined[1] AllButDefined[2] Room[3], ID , UseUdp)
/*
0=All
1=Defined
2=All players except the one defined (Others generally)
3=Room defined in ID, good for sending to other players in their rooms
*/


switch(argument0)
{
    case 0:
        with(ObjClient)
            {
            if argument2=false sendmessage(playerSocket,0,0,0);
            else sendmessage(global.udpListen,playerIP,playerPort,0);
            }
    break;
    case 1:
        with (ObjClient)
            {
            if (playerID==argument1)
                {
                if argument2=false sendmessage(playerSocket,0,0,0);
                else sendmessage(global.udpListen,playerIP,playerPort,0);
                }
            }
    break;
    case 2:
        with (ObjClient)
            {
            if (playerID!=argument1)
                {
                if argument2=false sendmessage(playerSocket,0,0,0);
                else sendmessage(global.udpListen,playerIP,playerPort,0);
                }
            }
    break;
    case 3:
        with (ObjClient)
            {
            if (playerRoom==argument1)
                {
                if argument2=false sendmessage(playerSocket,0,0,0);
                else sendmessage(global.udpListen,playerIP,playerPort,0);
                }
            }
    break;
    
    

}//Switch

