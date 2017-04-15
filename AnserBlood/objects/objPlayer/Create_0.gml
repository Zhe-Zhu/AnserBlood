walkingSpeed = 10;

instance_create_depth(x,y,2,objPlayerLegs);

enum st
{
	normal,
	attack
}
state = st.normal