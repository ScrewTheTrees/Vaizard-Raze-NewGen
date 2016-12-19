///ScrEntityWeaponAnimationSet(WeaponSprite, ArmsSprite, AnimationOverride, AnimationRepeat, AnimationArms, AnimationEndSprite, AnimationArmsEndSprite)


//Argument2 means override old animation when set to true, even its playing.

if (weapon_animation_playing==false || argument2==true)
{
sprite[6]=argument0;
sprite[7]=argument1;
weapon_animation_playing=argument2;
weapon_animation_repeat=argument3;
weapon_animation_arms_animate=argument4;

weapon_animation_endspr = argument5;
weapon_animation_arms_endspr = argument6;

weapon_animation_frame=0;
}
