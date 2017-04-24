speed *=0.90;

move_bounce_solid(true);

script_execute(scr_bloodSplat)

if speed = 0
{
	instance_create_depth(x,y,5,objBloodPool);
	
}