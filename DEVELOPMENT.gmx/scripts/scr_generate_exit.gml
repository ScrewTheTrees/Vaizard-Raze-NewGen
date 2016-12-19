global.generator=object_index;

while (!instance_exists(ExitStage))
{

inum=irandom_range(0,instance_number(Solid)-1);


with (instance_find(Solid,inum))
{
    if object_index==ObjSolidBlock
    || object_index==ObjSolidFloor
        {
        if !collision_rectangle(x-96,y-96,x+96,y-288,Solid,false,false)
        && x<room_width-192
        && x>room_width-3000
        && scr_debuggrid_path_possible(EntranceStage.x,EntranceStage.y,x+48,y-192)==true
        {
            instance_create(x+48,y-192,ExitStage);
            mp_grid_path(global.generator.debuggrid,global.generator.exitpath,EntranceStage.x,EntranceStage.y,ExitStage.x,ExitStage.y,true)
        }
    }
}


}//While
