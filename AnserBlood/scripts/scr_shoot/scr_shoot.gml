//屏幕抖动
objGame.shaking =1;
objGame.shake += random_range(0.25,0.4);
objGame.zoom_level = 0.9;

//射击

if firing = false
	{
	firing = true;
	instance_create_depth(x,y,-1,objBullet)
	alarm[0] = 3;
	}

