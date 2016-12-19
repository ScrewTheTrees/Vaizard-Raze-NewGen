///scr_place_solid_slope_r(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,ObjSolidStairRight,false,false)
{
instance_create(argument0,argument1,ObjSolidStairRight);
return true;
}

return false;
