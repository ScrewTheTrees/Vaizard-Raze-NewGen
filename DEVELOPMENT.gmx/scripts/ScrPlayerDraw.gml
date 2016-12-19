//Legs
if round(x) == round(xprevious) image_index=0;
if place_meeting(x,y+4,Solid)
    draw_sprite_ext(SprPlayerMovinglegs,image_index,x,y,facedir,1,image_angle,color[2],image_alpha);
else draw_sprite_ext(SprPlayerJumpinglegs,image_index,x,y,facedir,1,image_angle,color[2],image_alpha);

//Weapon
draw_sprite_ext(sprite[7],0,x+weapon_loc_x,y+weapon_loc_y,facedir,1,image_angle,color[1],image_alpha);
draw_sprite_ext(sprite[6],weapon_animation_frame,x+weapon_loc_x,y+weapon_loc_y,facedir,1,image_angle,c_white,image_alpha);


//Torso
draw_sprite_ext(SprPlayerTorso,0,x,y-50,facedir,1,image_angle,color[1],image_alpha);
draw_sprite_ext(SprPlayerTorsoExtra,0,x,y-50,facedir,1,image_angle,color[0],image_alpha);


//Head
draw_sprite_ext(sprite[5],0,x,y-65,facedir,1,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite[4],0,x,y-65,facedir,1,image_angle,c_white,image_alpha);
draw_sprite_ext(sprite[4],1,x,y-65,facedir,1,image_angle,color[4],image_alpha);

//Hair
draw_sprite_ext(sprite[3],1,x,y-65,facedir,1,image_angle,color[3],image_alpha);


