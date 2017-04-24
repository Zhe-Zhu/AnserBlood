/// @description Insert description here
// You can write your code in this editor

xx = other.x
yy = other.y

//创建尸体
if (visible == true)
{
	with instance_create_depth(x,y,-y,objPlayerDead)
		image_angle = objPlayer.image_angle;
}

visible = false;
	