
var messageid=argument0;
  switch(messageid)
  {
    case MSG_DEADPACKET:            MsgReciveDeadpacket();      break;
    case MSG_PLAYERID:              MsgRecivePlayerid();        break;
    case MSG_PLAYERINFO:            MsgRecivePlayerinfo();      break;
    case MSG_TESTTCP:               MsgReciveTestTCP();         break;
    case MSG_TESTUDP:               MsgReciveTestUDP();         break;
  }
clearbuffer(0);
