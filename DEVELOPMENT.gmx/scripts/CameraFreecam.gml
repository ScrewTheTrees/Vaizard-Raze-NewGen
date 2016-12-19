if keyboard_check(global.keyBind[KEY.UP])
y-=12;

if keyboard_check(global.keyBind[KEY.DOWN])
y+=12;

if keyboard_check(global.keyBind[KEY.RIGHT])
x+=12;

if keyboard_check(global.keyBind[KEY.LEFT])
x-=12;



//Set camera
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



//Clamp so it cant go outside room borders
if x>room_width[0]-(view_wview[0]/2)
x=room_width[0]-(view_wview[0]/2)
if x<view_wview[0]/2
x=view_wview[0]/2

if y>room_height[0]-(view_hview[0]/2)
y=room_height[0]-(view_hview[0]/2)
if y<view_hview[0]/2
y=view_hview[0]/2
