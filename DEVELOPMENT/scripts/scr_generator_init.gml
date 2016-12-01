lastgroundmodule=-1;
mystep=0;
done=false;

debuggrid=mp_grid_create(1,1,1,1,1,1);

global.generator=object_index;

exitpath=path_add();

global.hasMap = false;
global.readyToGetMap = true;

with (ObjClient)
{
    if inMission==true
    {
        hasMap = false;
        readyToGetMap = false;
    }
}
