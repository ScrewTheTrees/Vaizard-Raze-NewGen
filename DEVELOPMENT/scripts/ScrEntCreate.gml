alarm[0] = 2;
alarm[1] = 30;
alarm[2] = 30;

entityID = GetEntityID();

ownerID = 0;
controlled = false;

myroom = room;
facedir = 1;
movespeed = 1;


pressRight = false;
pressLeft = false;
pressUp = false;
pressDown = false;
pressJump = false;

ScrEntSetStats(10000,10000,10000);







//Not synced, fully client sided
canCollideProjectile = false;




for (var i = 0; i<=30; i++)
    {
    pressShoot[0] = false;
    }

