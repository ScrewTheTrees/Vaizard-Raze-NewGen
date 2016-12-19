///ScrEntityTakeDamage(damage, ignoreArmor );

if (ownerID=global.playerID)
{
    var dmg = argument0;
    var ignoreArmor = argument1;
    
    var dmg_mult = 1;
    var calcarmor = armor*2;
    
    if (armor > 0 && !ignoreArmor)
        {
        dmg_mult = 100 / (100+calcarmor)
        }
    else if (armor < 0 && !ignoreArmor)
        {
        dmg_mult = 2 - (100/(100-calcarmor))
        }
        
    healthCurrent -= dmg*dmg_mult;
}
