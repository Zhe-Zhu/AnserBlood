if other.throwing = 1
{
xx = other.x
yy = other.y

instance_destroy()

with instance_create_depth(x,y,-1,objEnemyCorpse)
image_angle = point_direction(x,y,other.xx,other.yy);
}