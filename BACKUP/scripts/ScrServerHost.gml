///ScrServerHost()




global.listen = tcplisten(global.tcpPort, 10, true);
global.udpListen = udpconnect(global.udpPortHost,2);

if (global.listen <= 0)
{
  show_message("Unable to listen on port: "+string(global.tcpPort));
  game_restart();
}
global.playerId = 0;
global.isHost = true;

instance_create(0,0,ObjOnlineHost);
instance_create(32,32,ObjOnlineHandle);
