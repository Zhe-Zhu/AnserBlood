speed *=0.90;

depth = -10;

move_bounce_solid(true);
script_execute(scr_bloodSplat);

if speed <= 1
{
	speed = 0;
	instance_create_depth(x,y,5,objBloodPool);
}

if position_meeting(x,y,objAir)
{
	isFalling = 1
	image_xscale -= 0.05;
	image_yscale = image_xscale;
	speed *= 0.2;
}

if image_xscale <= 0.1
{
	instance_destroy();
}