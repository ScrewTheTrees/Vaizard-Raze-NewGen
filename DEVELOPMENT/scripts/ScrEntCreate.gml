alarm[0] = 2;
alarm[1] = 30;
alarm[2] = 30;

entityID = GetNewEntityID();

ownerID = 0;
controlled = false;

myroom = room;
facedir = 1;
moveSpeed = 1;
jumpSpeed = 8;
gravity = 0;

moveType = MOVETYPE.NOONE;


pressRight = false;
pressLeft = false;
pressUp = false;
pressDown = false;
pressJump = false;

team = TEAM.NOONE;


ScrEntSetStats(10000,10000,10000,0);





//Not synced, fully client sided
canCollideProjectile = false;


for (var i = 0; i < global.shootKeys; i++)
    {
    shootPress[i] = false;
    shootKind[i] = 0;
    shootCooldown[i] = 0;
    }

