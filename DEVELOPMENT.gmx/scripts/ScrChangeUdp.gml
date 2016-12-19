///ScrChangeUdp(Port)

closesocket(global.udpListen);
global.udpListen = udpconnect(argument0,2);
global.udpPort = argument0;
