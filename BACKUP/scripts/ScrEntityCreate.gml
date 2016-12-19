ScrEntityWeaponAnimationInit();

alarm[0] = 2;
alarm[1] = 30;
alarm[2] = 30;
alarm[4] = 420;

entityID = GetNewEntityID();

ownerID = 0;
controlled = false;

myroom = room;
facedir = 1;
moveSpeed = 5;
jumpSpeed = 14;
jumpSpeedWall = 8;
jumpSpeedWallUp = 10;
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

color[0] = 0;
color[1] = 0;
color[2] = 0;
color[3] = 0;
color[4] = 0;

sprite[0] = SprDummy;
sprite[1] = SprDummy;
sprite[2] = SprDummy;
sprite[3] = SprDummy;
sprite[4] = SprDummy;
sprite[5] = SprDummy;
sprite[6] = SprDummy;
sprite[7] = SprDummy;

ScrEntitySetStats(10000,10000,10000,0);



moveScanHeight=20; //The height it scans up/down when checking for slope movement
moveScanIntervall=2; // Height checking per step (how precise the checking is)

weapon_loc_x = 0;
weapon_loc_y = 0;


//Not synced, fully client sided
canCollideProjectile = false;


for (var i = 0; i < global.shootKeys; i++)
    {
    shootPress[i] = false;
    shootPressed[i] = false;
    shootKind[i] = 0;
    shootCooldown[i] = 0;
    shootCooldown2[i] = 0;
    shootBullets[i] = 0;
    }

