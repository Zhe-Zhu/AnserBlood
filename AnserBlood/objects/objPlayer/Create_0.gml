walkingSpeed = 3.5;
depth = - 99;
holding = 0;

canPull = 20;
pullSpeed = 7;
global.pulling = noone;


instance_create_depth(x,y,2,objPlayerLegs);

enum st
{
	normal,
	attack,
	dead
}
state = st.normal;