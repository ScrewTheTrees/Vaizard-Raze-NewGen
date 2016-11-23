alarm[0] = 2;
alarm[1] = 30;
alarm[2] = 30;

entityID = GetNewEntityID();

ownerID = 0;
controlled = false;

myroom = room;
facedir = 1;
moveSpeed = 4;
jumpSpeed = 12;
jumpSpeedWall = 6;
jumpSpeedWallUp = 8;
gravity = 0;
setGrav = 0.4;

moveType = MOVETYPE.NOONE;


pressRight = false;
pressLeft = false;
pressUp = false;
pressDown = false;
pressJump = false;

pressedJump = false;    //One sided sync

team = TEAM.NOONE;


ScrEntitySetStats(10000,10000,10000,0);



moveScanHeight=20; //The height it scans up/down when checking for slope movement
moveScanIntervall=2; // Height checking per step (how precise the checking is)




//Not synced, fully client sided
canCollideProjectile = false;


for (var i = 0; i < global.shootKeys; i++)
    {
    shootPress[i] = false;
    shootKind[i] = 0;
    shootCooldown[i] = 0;
    }

