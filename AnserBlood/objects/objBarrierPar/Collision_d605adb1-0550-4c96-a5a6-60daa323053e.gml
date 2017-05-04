//子弹的x和y

xx = other.x + lengthdir_x(20,other.direction);
yy = other.y + lengthdir_y(20,other.direction);

with instance_create_depth(xx,yy,-1,objBulletHit)
	{
	image_angle = point_direction(other.x,other.y,x,y);
	}

with other 
{instance_destroy();}