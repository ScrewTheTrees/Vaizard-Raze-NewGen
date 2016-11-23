///CameraEntitycam(Object)
//Script for the dimensional movement camera that can be user controlled (when dead or similar)

var look_up,look_down;
var target=argument0;

look_up=0;
look_down=0

if keyboard_check(target.pressUp)
look_up=-300

if keyboard_check(target.pressDown)
look_down=300


if instance_exists(target)
{
if target.facedir=1 slide_to_point(target.x+300 ,target.y+look_up+look_down ,20)
else slide_to_point(target.x-300 ,target.y+look_up+look_down ,20)
}


//Calculated normal camera
x=round(x);
y=round(y);
view_xview[0]=x-(view_wview[0]/2);
view_yview[0]=y-(view_hview[0]/2);
view_wview[0]=basic_w;
view_hview[0]=basic_h;

if view_xview[0]<0 view_xview[0]=0;
if view_yview[0]<0 view_yview[0]=0;
if view_xview[0]+view_wview[0]>room_width[0] view_xview[0]=room_width[0]-view_wview[0];
if view_yview[0]+view_hview[0]>room_height[0] view_yview[0]=room_height[0]-view_hview[0];
