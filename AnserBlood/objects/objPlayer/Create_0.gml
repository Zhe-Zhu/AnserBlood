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