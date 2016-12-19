if weapon_animation_playing==true
    {
    var end_frame=sprite_get_number(sprite[6])-1;
    
    if weapon_animation_frame>end_frame
        {
        if weapon_animation_repeat==false
            {
            ScrEntityWeaponAnimationEnd();
            }
        else weapon_animation_frame=0;
        }
        
    weapon_animation_frame+=1;
    
        
    
    
    }
else weapon_animation_frame=0;
    
