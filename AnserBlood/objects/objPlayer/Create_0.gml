walkingSpeed = 3.5;
depth = - 99;
holding = 0;

pullSpeed = 7;
firing = false;
global.pulling = noone;

instance_create_depth(x,y,2,objPlayerLegs);
instance_create_depth(x,y,0,objPlayer1Cam)

enum st
{
	normal,
	attack,
	dead,
	shoot
}
state = st.normal;

cursor = instance_create_depth(x, y, 0, objCursor);
cursor.image_blend = make_colour_hsv(255, 0, 0);
threshold =.2;
curPreDirection = 0;
curDistance = 50;

global.cursor1X = 0;
global.cursor1Y = 0;