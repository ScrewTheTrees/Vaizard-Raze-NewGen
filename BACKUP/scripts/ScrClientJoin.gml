///ScrClientJoin(IP)
global.server = tcpconnect(argument0,global.tcpPort, true);
global.udpListen = udpconnect(global.udpPort,2);

if(global.server <= 0)
{
  show_message("Cannot connect to server");
  game_restart();
}
else
{
global.playerID =- 1;
global.isHost = false;
global.serverIP = argument0;

instance_create(32,32,ObjOnlineHandle);
}
