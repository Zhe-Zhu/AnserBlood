speed *=0.90;

script_execute(scr_bloodSplat)


if speed <= 1
{
	speed = 0;
	instance_create_depth(x,y,5,objBloodPool);
}

