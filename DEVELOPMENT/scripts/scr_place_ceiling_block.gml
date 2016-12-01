///scr_place_ceiling_block(X,Y)

if !collision_rectangle(argument0,argument1,argument0+90,argument1+90,ObjSolidRoof,false,false)
{
instance_create(argument0,argument1,ObjSolidRoof);
return true;
}

return false;
