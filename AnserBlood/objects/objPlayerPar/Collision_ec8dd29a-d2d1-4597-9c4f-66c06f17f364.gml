xx = other.x
yy = other.y

//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

//损失生命值

	if armor >0 {armor -=3}
	else
	{
	hp -= 3;
	script_execute(scr_bloodSplat);

	}


//击退
x += lengthdir_x(1,fallDir);
y += lengthdir_y(1,fallDir);