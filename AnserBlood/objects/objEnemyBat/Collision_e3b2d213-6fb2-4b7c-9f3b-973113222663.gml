if other.throwing = 1
{
xx = other.x
yy = other.y

instance_destroy()

with instance_create_depth(x,y,-1,objEnemyCorpse)
image_angle = point_direction(x,y,other.xx,other.yy);

with instance_create_depth(other.x,other.y,-1,objBloodSmoke1)
	{
	image_xscale = random_range(2,5);
	image_yscale = random_range(2,5);
	image_angle = point_direction(x,y,other.xx,other.yy);
	}
}