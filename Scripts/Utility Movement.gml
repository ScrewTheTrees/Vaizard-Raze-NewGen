#define slide_to_point
//slide_to_point(x,y,divided speed)
//The lower argument2 is the faster it goes


if x>argument0
x-=(x-argument0)/argument2
if y>argument1
y-=(y-argument1)/argument2

if x<argument0
x+=(argument0-x)/argument2
if y<argument1
y+=(argument1-y)/argument2

#define rotate_to_point_hard
//Usage:
//rotate_to_point_hard(x, y, speed)
var angle_1, angle_2, result, turn_speed,target_dir;

turn_speed=argument2;
target_dir = point_direction(x, y, argument0, argument1);

angle_1 = target_dir;
angle_2 = direction;
result = angle_1 - angle_2;
while (result > 180)  { result -= 360 }
while (result < -180) { result += 360 }
turn_dir=result

if (turn_dir < -turn_speed) { turn_dir = -turn_speed }
if (turn_dir > turn_speed) { turn_dir = turn_speed }
direction+=turn_dir;

#define rotate_to_point_smooth
//Usage:
//rotate_to_point_smooth(x, y, minSpeed, maxSpeed, steps)
//Made bah attacka

var sturn,targetDir;
sturn = 0;

targetDir = point_direction(x,y,argument0,argument1);
if(image_angle > 360) {
    image_angle -= 360;
}
if(image_angle < 0) {
    image_angle += 360;
}

if(targetDir > image_angle) {

    if(targetDir > image_angle+180){ //1.
        sturn = (targetDir-360-image_angle);
    } else { //2.
        sturn = (targetDir-image_angle);
    }
    
} else {
    
    if(image_angle > targetDir+180) { //3.
        sturn = (360-image_angle+targetDir);
    } else { //4.
        sturn = (targetDir-image_angle);
    }

}

if(abs(image_angle-targetDir) <= argument2 || abs(image_angle-targetDir) >= 360-argument2) {
    image_angle = targetDir;
} else {

//Clamp max speed
    if(sturn > 0 && sturn > argument3*argument4) {
        sturn = argument3*argument4;
    }
    if(sturn < 0 && sturn < -(argument3*argument4)) {
        sturn = -(argument3*argument4);
    }
//Clamp min speed
    if(sturn > 0 && sturn < argument2*argument4) {
        sturn = argument2*argument4
    }
    if(sturn < 0 && sturn > -(argument2*argument4)) {
        sturn = -(argument2*argument4)
    }
    image_angle += sturn/argument4;
}

