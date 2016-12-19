var tid = readint(0);
var rid = readint(0);
var text = readstring(0);
var eid = readbyte(0);
clearbuffer(0);

ScrChangeRoom(tid,rid,text,eid);


MsgSendPlayerinfo();
       
