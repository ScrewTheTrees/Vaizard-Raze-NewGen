///ScrEntityPlatformerMove();

if (place_meeting(x,y+4,Solid))
{
    gravity=0;
    vspeed=0;
    hspeed=0;
}
else gravity=setGrav;







if (pressRight==1) facedir=1;
if (pressLeft==1) facedir=-1;

moveSpeedRun=0;


if (pressRight==true || pressLeft==true) //If move left/right defined, move
    moveSpeedRun=moveSpeed*facedir;

if (pressRight==true && pressLeft==true) //do not move if both keys are pressed at the same time
    moveSpeedRun=0;
    
    

moving=0;
gg=true;

//Move in X direction depending on key layout
if (moveSpeedRun!=0)
{
gg=false;

if (place_meeting(x,y+4,Solid)==true)  
    for(i=moveScanHeight; i>=-moveScanHeight; i-=moveScanIntervall)
    {
    
    //If the position above the relative I position is free, whilst the position i+2 underneath is occupied
    if !place_meeting(x+moveSpeedRun,y+i,Solid)
    && place_meeting(x+moveSpeedRun,y+i+moveScanIntervall,Solid)
       { 
       y+=i; 
       x+=moveSpeedRun; 
       gg=true; 
       //facedir=-1
       vspeed=0;
       hspeed=0;
       gravity=0;
       i=-10000; //Stop calculation
       
       moving=1;
       }
       
     }//For

     //We did not move according to slope movement

if hspeed=0 //Can only control if you are not walljumping/getting launched
    {
    if gg=false && !place_meeting(x+moveSpeedRun,y,Solid) {x+=moveSpeedRun }   //Full movement speed ahread!
    else if gg=false && !place_meeting(x+facedir,y,Solid) {x+=facedir};         //A small step against the wall to make better interpolation
    }//if movespeed
}//Hspeed





//Holding up makes you jump higher and fall slower... moar floaty
if (!place_meeting(x,y+4,Solid) && !place_meeting(x,y-8,Solid) && pressJump == true)
   {
   vspeed -= gravity*0.5;
   }

if (pressedJump == true) && place_meeting(x,y+4,Solid)
   {
   vspeed = -jumpSpeed;
   }
else if (pressedJump == true && !place_meeting(x,y-6,Solid) && place_meeting(x-moveSpeed,y,Solid))
     {
     hspeed=jumpSpeedWall;
     vspeed=-jumpSpeedWallUp;
     }
else if (pressedJump == true && !place_meeting(x,y-6,Solid) && place_meeting(x+moveSpeed,y,Solid))
     {
     hspeed=-jumpSpeedWall;
     vspeed=-jumpSpeedWallUp;
     }



