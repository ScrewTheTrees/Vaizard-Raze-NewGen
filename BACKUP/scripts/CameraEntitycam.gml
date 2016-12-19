///CameraEntitycam(Object)
//Script for the dimensional movement camera

var look;
var tempTarget=argument0;

look=0;

if (tempTarget.pressUp)
look=-300

if (tempTarget.pressDown)
look=300


if instance_exists(tempTarget)
{
if tempTarget.facedir=1 slide_to_point(tempTarget.x+300 ,tempTarget.y+look ,20)
else slide_to_point(tempTarget.x-300 ,tempTarget.y+look ,20)
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
