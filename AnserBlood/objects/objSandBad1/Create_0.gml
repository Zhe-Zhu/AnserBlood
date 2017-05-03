event_inherited();

//创建沙包射击站位
with instance_create_depth(x,y,0,objSandBagShootingPos)
{
	image_angle = other.image_angle;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
}