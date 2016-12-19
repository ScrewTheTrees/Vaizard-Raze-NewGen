
var messageid=argument0;
  switch(messageid)
  {
    case MSG_DEADPACKET:            MsgReciveDeadpacket();                  break;
    case MSG_PLAYERID:              MsgRecivePlayerid();                    break;
    case MSG_PLAYERINFO:            MsgRecivePlayerinfo();                  break;
    case MSG_REQUESTROOM:           MsgReciveRequestRoom();                 break;
    case MSG_PLAYERINFOREQUEST:     MsgRecivePlayerInfoRequest();           break;
    case MSG_ROOM_GOTOROOM:         MsgReciveRoomGotoRoom();                break;
    case MSG_FORCE_CONTROL:         MsgReciveForceControl();                break;
    
    case MSG_TESTTCP:               MsgReciveTestTCP();                     break;
    case MSG_TESTUDP:               MsgReciveTestUDP();                     break;
    
    case MSG_ENTITYCREATE:          MsgReciveEntitycreate();                break;
    case MSG_ENTITYINFO:            MsgReciveEntityinfo();                  break;
    case MSG_ENTITYMOVE:            MsgReciveEntitymove();                  break;
    
    case MSG_PROJECTILECREATE:      MsgReciveProjectileCreate();            break;
    
    case MSG_MAPSEND:               MsgReciveMap();                         break;

  }
clearbuffer(0);
