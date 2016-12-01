#define scr_generator_init
lastgroundmodule=-1;
mystep=0;
done=false;

debuggrid=mp_grid_create(1,1,1,1,1,1);

global.generator=object_index;

exitpath=path_add();


obj_player.hasmap=false;
obj_player.ready=true;

obj_playerparent.mapsent=false;

#define scr_type1_ceiling_module_flat
///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling

padding=768;



//remeber that the 

nexty=irandom_range(-6,8)*96; //Choose new blcok
        while(nexty+starty<min_height || nexty+starty>max_height)
        {
        nexty=irandom_range(-6,8)*96; //Choose new blcok
        }//While
    
    nextx=irandom_range(5,13)*96; //Choose new blcok
    
    //These 3 sets the endX/EndY
    starty=starty+nexty;
    endy=starty; //Set up endY as starty (they are on the same plane)
    endx=startx+nextx; //Set up endX
    
    blocky=starty;
    
    
    scr_debug_generator_add(1,startx+48,starty+48)
    scr_debug_generator_add(0,endx+48,endy+48)
    
    
        while (blocky> -padding)
        {
        scr_place_ceiling_block(startx,blocky);
        scr_place_ceiling_block(endx,blocky);
        blocky-=96;
        }//Side blocks
    
        while (startx<endx)
        {
        scr_place_ceiling_block(startx,starty);
        startx+=96;
        
        }
    
    
    
    
    

#define scr_type1_ceiling_module_empty
///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling


padding=768;




    nextx=irandom_range(7,12)*96; //Choose new blcok
    
    
    endx=startx+nextx; //Set up endX
    startx=endx;
    
    

#define scr_type1_ground_module_flat
///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling

padding=768;



//remeber that the 

nexty=irandom_range(-6,7)*96; //Choose new blcok
        while(nexty+starty<min_height || nexty+starty>max_height)
        {
        nexty=irandom_range(-4,7)*96; //Choose new blcok
        }//While
    
    nextx=irandom_range(5,13)*96; //Choose new blcok
    
    //These 3 sets the endX/EndY
    starty=starty+nexty;
    endy=starty; //Set up endY as starty (they are on the same plane)
    endx=startx+nextx; //Set up endX
    
    blocky=starty;
    
    
    scr_debug_generator_add(2,startx+48,starty+48)
    scr_debug_generator_add(0,endx+48,endy+48)
    
    
        while (blocky< room_height+padding)
        {
        scr_place_ground_block(startx,blocky);
        scr_place_ground_block(endx,blocky);
        blocky+=96;
        }//Side blocks
    
        while (startx<endx)
        {
        scr_place_ground_block(startx,starty);
        startx+=96;
        
        }
    
    
    
    
    

#define scr_type1_ground_module_empty
///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling


padding=768;




    nextx=irandom_range(5,11)*96; //Choose new blcok
    
    
    endx=startx+nextx; //Set up endX
    startx=endx;
    
    

#define scr_type1_ground_module_stair
///scr_type1_ceiling_module_flat()
//All the vars you need is in scr_type1_generate_ceiling

padding=768;

nexty=0;
nextx=0;



nexty=irandom_range(-8,8)*96; //Choose new blcok
        while(nexty+starty<min_height || nexty+starty>max_height
        || (nexty>=-2*96 && nexty<=2*96))
        {
        nexty=irandom_range(-8,8)*96; //Choose new blcok
        }//While
    
    if nexty<0  nextx=nexty-(nexty*2)
    else nextx=nexty;
    
    endy=starty+nexty; //Set up endY as starty (they are on the same plane)
    endx=startx+nextx; //Set up endX
    
    blocky=starty;
    blocky2=endy;
    
    
    scr_debug_generator_add(3,startx+48,starty+48)
    scr_debug_generator_add(0,endx+48,endy+48)
    
    
        while (blocky< room_height+padding)
        {
        scr_place_ground_block(startx,blocky);
        scr_place_ground_block(endx,blocky2);
        blocky+=96;
        blocky2+=96;
        }//Side blocks
    
        if (nexty>0)
        {
            //Down
            while (startx<endx)
            {
            scr_place_ground_block(startx,starty);
            scr_place_solid_slope_l(startx+96,starty);
            startx+=96;
            starty+=96
        
            }
        }
        
        if (nexty<0)
        {
            //Down
            while (startx<endx)
            {
            scr_place_ground_block(startx,starty);
            scr_place_solid_slope_r(startx,starty-96);
            startx+=96;
            starty-=96
            }
        }
    
    
    

#define scr_type1_generate_ceiling

min_height=96;
max_height=(room_height/2)-192

startx=(-768);
starty=round(irandom_range(min_height,max_height)/96)*96;

endx=0;
endy=0;

finalx=room_width+768; //Final X we want to reach


//first loop
while (startx<finalx)
    {      
    
    
    
    module=choose(MODULE_FLAT,MODULE_FLAT,MODULE_FLAT,MODULE_EMPTY);
    
        switch(module)
        {
        case MODULE_FLAT:
        scr_type1_ceiling_module_flat(startx,starty,endx,endy);
        break;
        case MODULE_EMPTY:
        scr_type1_ceiling_module_empty(startx,starty,endx,endy);
        break;
        }//Switch module
    
    
    startx+=96;
    
    
        
    }//Startx<finalX
    
    
scr_debug_generator_add(10,startx,starty);//End debug drawing for this section

#define scr_type1_generate_ground

min_height=(room_height/2)+192
max_height=room_height-192;

startx=(-768);
starty=round(irandom_range(min_height,max_height)/96)*96;

endx=0;
endy=0;

finalx=room_width+768; //Final X we want to reach


//first loop
while (startx<finalx)
    {      
    
    
    if startx<1000 or startx>room_width-1800 module=MODULE_FLAT //Start should always have some kind of ground
    else module=choose(MODULE_FLAT,MODULE_FLAT,MODULE_FLAT,MODULE_STAIR,MODULE_STAIR,MODULE_EMPTY);
    
        switch(module)
        {
        case MODULE_FLAT:
        scr_type1_ground_module_flat();
        break;
        case MODULE_EMPTY:
        scr_type1_ground_module_empty();
        break;
        case MODULE_STAIR:
        scr_type1_ground_module_stair();
        break;
        }//Switch module
    
    lastgroundmodule=module;
    startx+=96;
        
    }//Startx<finalX
    
    
scr_debug_generator_add(10,startx,starty);//End debug drawing for this section

#define scr_type1_generate_hplatforms

platforms=irandom_range(35,55);

while (platforms>0)
{
    platx=round(irandom_range(192,room_width-192)/96)*96;
    platy=round(irandom_range(192,room_height-192)/96)*96;
    
    plath=irandom_range(3,8)*96;
    
    if scr_platform_possible(platx,platy,platx+plath,platy)==true
    {   
        scr_debug_generator_add(4,platx+48,platy+48)
        scr_debug_generator_add(11,platx+plath+48,platy+48)
        
        for (xx=platx; xx<=(platx+plath);xx+=96)
        {
            scr_place_solid_block(xx,platy);
        }
        platforms-=1;
    }
    
}//While platforms


scr_debug_generator_add(10,startx+48,starty+48);//End debug drawing for this section

#define scr_type1_generate_vplatforms

platforms=irandom_range(20,35);

while (platforms>0)
{
    platx=round(irandom_range(192,room_width-192)/96)*96;
    platy=round(irandom_range(192,room_height-192)/96)*96;
    
    platv=irandom_range(3,6)*96;
    
    if scr_platform_possible(platx,platy,platx,platy+platv)==true
    {   
        scr_debug_generator_add(4,platx+48,platy+48)
        scr_debug_generator_add(11,platx+48,platy+platv+48)
        
        for (yy=platy; yy<=(platy+platv);yy+=96)
        {
            scr_place_solid_block(platx,yy);
        }
        platforms-=1;
    }
    
}//While platforms


scr_debug_generator_add(10,startx,starty);//End debug drawing for this section

#define scr_generate_tweakblocks


global.generator=object_index;

//Run check several times
repeat(10)
{
    with (obj_solid_block)
    {
        if place_meeting(x,y+192,obj_solid_block)
        {
            if scr_place_solid_block(x,y+96)==true
                scr_debug_generator_add(5,x+48,y+144);
        }
    
        //Fill Gaps that dont really go anywhere anyway
        if place_meeting(x+192,y,obj_solid_block)
        && place_meeting(x+96,y-96,obj_solid_block)
        {
            if scr_place_solid_block(x+96,y)==true
                scr_debug_generator_add(5,x+144,y+48);
        }
    
    
   
    }
}

#define scr_generate_entrance

while (!instance_exists(obj_entrance_stage))
{

inum=irandom_range(0,instance_number(obj_solid_ground)-1);


with (instance_find(obj_solid_ground,inum))
{
    if !collision_rectangle(x-96,y-96,x+96,y-288,obj_solidparent,false,false)
    && x<1500
    && x>192
    
    {
        ii=instance_create(x+48,y-192,obj_entrance_stage);
        ii.eid=1;
    }
}


}//While

#define scr_generate_exit

global.generator=object_index;

while (!instance_exists(obj_exit_stage))
{

inum=irandom_range(0,instance_number(obj_solidparent)-1);


with (instance_find(obj_solidparent,inum))
{
    if object_index==obj_solid_block
    || object_index==obj_solid_ground
        {
        if !collision_rectangle(x-96,y-96,x+96,y-288,obj_solidparent,false,false)
        && x<room_width-192
        && x>room_width-3000
        && scr_debuggrid_path_possible(obj_entrance_stage.x,obj_entrance_stage.y,x+48,y-192)==true
        {
            instance_create(x+48,y-192,obj_exit_stage);
            mp_grid_path(global.generator.debuggrid,global.generator.exitpath,obj_entrance_stage.x,obj_entrance_stage.y,obj_exit_stage.x,obj_exit_stage.y,true)
        }
    }
}


}//While

#define scr_place_ceiling_block
///scr_place_ceiling_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_ceiling,false,false)
{
instance_create(argument0,argument1,obj_solid_ceiling);
return true;
}

return false;

#define scr_place_ground_block
///scr_place_ground_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_ground,false,false)
{
instance_create(argument0,argument1,obj_solid_ground);
return true;
}

return false;

#define scr_place_solid_block
///scr_place_solid_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_block,false,false)
{
instance_create(argument0,argument1,obj_solid_block);
return true;
}

return false;

#define scr_place_solid_sidewall
///scr_place_solid_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_sidewall,false,false)
{
instance_create(argument0,argument1,obj_solid_sidewall);
return true;
}

return false;

#define scr_place_solid_slope_r
///scr_place_solid_slope_r(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_slope_r,false,false)
{
instance_create(argument0,argument1,obj_solid_slope_r);
return true;
}

return false;

#define scr_place_solid_slope_l
///scr_place_solid_slope_l(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,obj_solid_slope_l,false,false)
{
instance_create(argument0,argument1,obj_solid_slope_l);
return true;
}

return false;

#define scr_debug_generator_init
global.debug_nodes=0;

global.debug_node_type[0]=0;
global.debug_node_x[0]=0;
global.debug_node_y[0]=0;


//0=start
//1=end

#define scr_debug_generator_add
///scr_debug_generator_add(Type,X,Y)

global.debug_node_type[global.debug_nodes]=argument0;
global.debug_node_x[global.debug_nodes]=argument1;
global.debug_node_y[global.debug_nodes]=argument2;


global.debug_nodes+=1;

#define scr_debug_generator_draw
///scr_debug_generator_draw()
if global.debugdraw==true
{

for (ii=0;ii<global.debug_nodes;ii+=1)
    {
    if global.debug_node_type[ii]=0
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_red,c_red,false);
        
        draw_set_alpha(0.5);
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_purple,c_purple);
        draw_set_alpha(1);
        }
    else if global.debug_node_type[ii]=1
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_orange,c_orange,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_orange,c_orange);
        
        }
    else if global.debug_node_type[ii]=2
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_green,c_green,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_green,c_green);
        
        }
    else if global.debug_node_type[ii]=3
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_yellow,c_yellow,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_yellow,c_yellow);
        
        }
    else if global.debug_node_type[ii]=4
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_lime,c_lime,false);
        
        if ii+1<global.debug_nodes
        draw_line_width_colour(global.debug_node_x[ii],global.debug_node_y[ii],global.debug_node_x[ii+1],global.debug_node_y[ii+1],8,c_lime,c_lime);
        
        }
    else if global.debug_node_type[ii]=5
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],24,c_lime,c_lime,false);
        }
    else if global.debug_node_type[ii]=11
        {
        draw_circle_colour(global.debug_node_x[ii],global.debug_node_y[ii],16,c_red,c_red,false);
        }
        
        
        
        
        
        
        
        
    
    }
    
    draw_set_alpha(0.5);
    mp_grid_draw(debuggrid);
    draw_set_alpha(1);
    
    
    draw_set_color(c_red);
    for (pt=0;pt<path_get_number(exitpath)-1;pt+=1)
    {
        draw_line_width_colour(path_get_point_x(exitpath,pt),path_get_point_y(exitpath,pt),path_get_point_x(exitpath,pt+1),path_get_point_y(exitpath,pt+1),8,c_red,c_red);
        
    }
    
    draw_set_color(c_white);
    
    
}//IF debugdraw

#define scr_debuggrid_create
scr_debuggrid_destroy(); //Clean up temp grid

global.gridholder=object_index;

debuggrid=mp_grid_create(0,0,(round(room_width/96)),round(room_height/192),96,192);
with (obj_solidparent)
{
mp_grid_add_cell(global.gridholder.debuggrid,floor(x/96),floor(y/192));
}

#define scr_debuggrid_destroy

mp_grid_destroy(debuggrid);

#define scr_debuggrid_path_possible
///scr_debuggrid_path_possible(x1,y1,x2,y2)
//Returns true when pathing between those 2 points is possible

temppath=path_add();

ret=(mp_grid_path(global.generator.debuggrid,temppath,argument0,argument1,argument2,argument3,true));


path_delete(temppath);

return(ret);

#define scr_platform_possible
///scr_platform_possible(x1,y1,x2,y2);
//Returns true of the platform is allowed at this location.


if collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+288,obj_solid_ceiling,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+288,obj_solid_ground,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+288,obj_solid_slope_l,false,false)
or collision_rectangle(argument0-96,argument1-288,argument2+190,argument3+288,obj_solid_slope_r,false,false)
//No Ground is not allowed on top of platform, and no celing blocks allowed below it
or collision_rectangle(argument0,argument1,argument2,-100,obj_solid_ground,false,false)
or collision_rectangle(argument0,argument1,argument2,room_height+100,obj_solid_ceiling,false,false)
{
    return (false);
}






return (true);

#define scr_generator_type1_case
if global.playerid=0 mystep+=1;



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

case 30:
global.bad=false;

with (obj_otherplayer)
{
    if inmission=true
    {
        if (ready==false or mapsent=true)
        {
            global.bad=true;
        }
        else if hasmap==false
        {
            mapsent=true;
            msg_send_map_blocks();
            msg_send_map_props();
        }
    }
}
    with (obj_player) scr_entity_freeze();
    if global.bad=true mystep-=2; //Go back and check again
    else done=true;
break;


}

//Dont want him falling outside the map
if !instance_exists(obj_entrance_stage) with (obj_player) scr_entity_freeze();

