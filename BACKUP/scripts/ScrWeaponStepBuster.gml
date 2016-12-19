///ScrWeaponStepBuster(Shoot ID handler)

ScrEntityWeaponAnimationSet(SprWeaponBuster,SprArmsBuster,false,false,false,SprWeaponBuster,SprArmsBuster);


if (shootPressed[argument0] == true && shootBullets[argument0] > 0)
{
    ScrShootSwitcher(SHOOT.BUSTER_STANDARD);
    shootCooldown[argument0] = 120;
    shootBullets[argument0]-=1;
    
    ScrEntityWeaponAnimationSet(SprWeaponBusterAnim,SprArmsBuster,true,false,false,SprWeaponBuster,SprArmsBuster);
    MsgSendEntityinfo();
    
}
else if shootCooldown[argument0]<=0
        shootBullets[argument0] = 4;

if shootPress[argument0]==true
{
    shootCooldown2[argument0]+=2;
}

