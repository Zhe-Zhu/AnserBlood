//不断重置射击目标状态
	if hasTarget = true
	{
		image_angle = point_direction(x,y,shootTargetX,shootTargetY)
	}

	
//SHOOT
script_execute(scr_shoot);