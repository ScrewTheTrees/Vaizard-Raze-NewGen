if (IsHost()) mystep+=1;



switch(mystep)
{
case 2: scr_type1_generate_ceiling() break;
case 4: scr_type1_generate_ground() break;
case 6: scr_type1_generate_hplatforms() break;
case 8: scr_type1_generate_vplatforms() break;
case 10: scr_generate_tweakblocks() break;


case 12: scr_debuggrid_create(); break;
case 14: scr_generate_entrance() break;
case 16: scr_generate_exit() break;

case 36:
    global.bad=false;
    with (ObjClient)
    {
        if inMission=true
        { 
            if (readyToGetMap == false)
                global.bad=true;
        }
    }
    if (global.bad == true) mystep-=2;
    else MsgSendMap();

break;
    
case 40:
global.bad=false;

with (ObjClient)
{
    if inMission=true
    {
        if (hasMap==false)
            global.bad=true;
    }
}
    if global.bad=true mystep-=2; //Go back and check again
    else done=true;
break;


}

//Dont want him falling outside the map
if (!instance_exists(EntranceStage)) with (Entity) ScrEntityFreeze();


