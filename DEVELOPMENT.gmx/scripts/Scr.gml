///ScrClientStart(IP)
global.server = tcpconnect(argument0,global.tcpPort, true);
global.udpListen = udpconnect(global.udpPort,2);

if(global.server <= 0)
{
  show_message("Cannot connect to server");
  game_restart();
}
else
{
global.playerId =- 1;
global.singlePlayer = false;
global.isHost = false;
global.playerIp[0] = argument0;

instance_create(32,32,ObjRecivePacket)
}
