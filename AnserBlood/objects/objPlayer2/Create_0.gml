walkingSpeed = 3.5;
depth = - 99;
holding = 0;

pullSpeed = 7;
firing = false;
global.pulling = noone;

instance_create_depth(x,y,2,objPlayerLegs);

enum st2
{
	normal,
	attack,
	dead,
	shoot
}
state = st.normal;