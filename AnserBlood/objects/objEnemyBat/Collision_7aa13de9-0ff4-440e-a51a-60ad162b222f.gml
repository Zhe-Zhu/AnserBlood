
//script_execute(scr_killText);

//script_execute(scr_hitFeel)

xx = other.x
yy = other.y

instance_destroy();

//创建尸体
with instance_create_depth(x,y,-2,objEnemyCorpse)
	image_angle = point_direction(x,y,other.xx,other.yy);

//敌人武器掉落
with instance_create_depth(x,y,-2,objWeaponKandao)
	{
	speed = 12;
	direction = random(360)
	drop = 1;
	}