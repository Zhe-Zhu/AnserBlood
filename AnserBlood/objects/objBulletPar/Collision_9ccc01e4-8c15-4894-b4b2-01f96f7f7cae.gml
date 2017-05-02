instance_destroy();
//墙体的x和y
xx = other.x;
yy = other.y ;

with instance_create_depth(x,y,-1,objBulletHit)
	{image_angle = point_direction(other.xx,other.yy,x,y);}
