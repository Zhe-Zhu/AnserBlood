xx = other.x
yy = other.y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

//损失生命值
if other.selfBullet != id
{
	hp -= 12;
	script_execute(scr_bloodSplat);
	//销毁子弹
	with other{instance_destroy()}
	
	//击退
	x += lengthdir_x(4,fallDir);
	y += lengthdir_y(4,fallDir);

instance_destroy();
}


