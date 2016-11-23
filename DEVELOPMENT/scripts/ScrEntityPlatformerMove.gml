///ScrEntityPlatformerMove();

if (pressRight==true || pressLeft==true)
    moveSpeedRun=moveSpeed*facedir;
else moveSpeedRun=0;

moving=0;
gg=true;

//Move in X direction depending on key layout
if (moveSpeedRun!=0)
{
gg=false;

if (place_meeting(x,y+4,obj_solidparent)==true)  
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

