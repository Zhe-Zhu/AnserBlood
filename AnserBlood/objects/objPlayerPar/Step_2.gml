//不断重置射击目标状态
	if hasTarget = false 
	{
		//targeting = 0;	
		//shootTargetX = 0;
		//shootTargetY = 0;
		image_angle = cursor.image_angle;
	}	
	else  //有射击目标的话，玩家朝向
	{
		image_angle = point_direction(x,y,shootTargetX,shootTargetY)
	}
	
//SHOOT
script_execute(scr_shoot);