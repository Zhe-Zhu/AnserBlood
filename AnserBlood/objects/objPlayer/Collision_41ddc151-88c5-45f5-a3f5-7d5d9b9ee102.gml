/// @description Insert description here
// You can write your code in this editor

xx = other.x
yy = other.y

//创建尸体
if (state != st.dead)
{
	with instance_create_depth(x,y,-1,objPlayerDead)
		image_angle = objPlayer.image_angle;
	instance_destroy(objPlayerLegs);
}

visible = false;
state = st.dead;
	