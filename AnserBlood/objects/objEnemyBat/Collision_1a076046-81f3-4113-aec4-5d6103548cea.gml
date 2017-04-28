// Move away from other enemies
if throwing =0
{
	x += lengthdir_x(1, point_direction(other.x, other.y, x, y) + random_range(-10, 10));
	y += lengthdir_y(1, point_direction(other.x, other.y, x, y) + random_range(-10, 10));
}

if throwing =1
{
	xx = other.x
	yy = other.y

	instance_destroy();

//创建尸体
	with instance_create_depth(x,y,-1,corpse)
	image_angle = point_direction(x,y,other.xx,other.yy);

//敌人武器掉落
	with instance_create_depth(x,y,-1,objWeaponKandao)
	{
	speed = 12;
	direction = random(360)
	drop = 1;
	}
	
	//创建对方的尸体
with (other)
	{
		xx = other.x
		yy = other.y

	instance_destroy();

//创建尸体
	with instance_create_depth(x,y,-1,corpse)
	image_angle = point_direction(x,y,other.xx,other.yy);

//敌人武器掉落
	with instance_create_depth(x,y,-1,objWeaponKandao)
	{
	speed = 12;
	direction = random(360)
	drop = 1;
	}
	}
}
