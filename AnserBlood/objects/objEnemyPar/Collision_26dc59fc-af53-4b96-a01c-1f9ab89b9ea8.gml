xx = other.x
yy = other.y

//损失生命值
alive -= 1;
script_execute(scr_bloodSplat);

if alive <=0
{
instance_destroy();

//创建尸体
with instance_create_depth(x,y,-2,corpse)
	image_angle = point_direction(x,y,other.xx,other.yy);

//敌人武器掉落
with instance_create_depth(x,y,-2,objWeaponKandao)
	{
	speed = 12;
	direction = random(360)
	drop = 1;
	}
}