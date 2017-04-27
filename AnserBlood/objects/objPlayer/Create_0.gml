hspd = 0
vspd = 0
walkingSpeed = 3.5;
fric = 2;
hp = 100;
hpMax = 100;

depth = - 99;
arm = 0;

firing = false;

//instance_create_depth(x,y,2,objPlayerLegs);
instance_create_depth(x,y,0,objPlayer1Cam)

enum st
{
	normal,
	attack,
	dead,
	shoot
}
state = st.normal;

//游标
cursor = instance_create_depth(x, y, 0, objCursor);
cursor.image_blend = make_colour_hsv(255, 0, 0);

threshold =.2;
curPreDirection = 0;
curDistance = 50;

global.cursor1X = 0;
global.cursor1Y = 0;