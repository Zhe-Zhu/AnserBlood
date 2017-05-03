//子弹的x和y
xx = other.x;
yy = other.y;

with instance_create_depth(xx,yy,-1,objBulletHit)
	{
	image_angle = point_direction(other.x,other.y,x,y);
	}

with other 
{instance_destroy();}