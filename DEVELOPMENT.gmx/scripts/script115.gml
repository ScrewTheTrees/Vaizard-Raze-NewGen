if keyboard_check(global.keybind[KEY_UP])
y-=24;

if keyboard_check(global.keybind[KEY_DOWN])
y+=24;

if keyboard_check(global.keybind[KEY_RIGHT])
x+=24;

if keyboard_check(global.keybind[KEY_LEFT])
x-=24;



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
