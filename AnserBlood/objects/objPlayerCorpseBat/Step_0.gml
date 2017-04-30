speed *=0.90;
depth = -10;

script_execute(scr_bloodSplat);

//停下后制造血滩
if speed <= 1
{
	speed = 0;
	instance_create_depth(x,y,5,objBloodPool);
}

