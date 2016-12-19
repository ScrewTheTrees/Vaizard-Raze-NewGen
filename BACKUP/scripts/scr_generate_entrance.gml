while (!instance_exists(EntranceStage))
{

inum=irandom_range(0,instance_number(ObjSolidFloor)-1);


with (instance_find(ObjSolidFloor,inum))
{
    if !collision_rectangle(x-96,y-96,x+96,y-288,Solid,false,false)
    && x<1500
    && x>192
    
    {
        ii=instance_create(x+48,y-192,EntranceStage);
    }
}


}//While
