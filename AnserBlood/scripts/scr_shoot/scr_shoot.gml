//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//屏幕抖动
			if shakeCamera = 1	{objCamera.shake1 += random_range(-2,2);}
			if shakeCamera = 2	{objCamera.shake2 += random_range(-2,2);}


	//射击
	if firing = false 
	{
		if  clipAmmo >0	|| arm = 0//如果是枪
		{
			{
			firing = true;
			alarm[0] = global.weaponArray[arm,2];
			x += lengthdir_x(2,point_direction(cursor.x,cursor.y,x,y,))
			y += lengthdir_y(2,point_direction(cursor.x,cursor.y,x,y,))
			
			var i;
			for (i =0; i < global.weaponArray[arm,11]; i ++) 
				{
				//创建子弹
				with (instance_create_depth(x+lengthdir_x(global.weaponArray[arm,4]+muzzleOffest,image_angle),y+lengthdir_y(global.weaponArray[arm,4]+muzzleOffest,image_angle),-10,global.weaponArray[arm,3]))
				{		
				direction = other.image_angle;
				image_angle = direction;
				speed = global.weaponArray[other.arm,5]
				selfBullet = other.id;
				damage = global.weaponArray[other.arm,14];
				
				/*
				if other.hasTarget = false
					{
					move_towards_point
					(other.shootTargetX+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]), 
					 other.shootTargetY+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]),
					 global.weaponArray[other.arm,5]);
					}
					else
					{
					move_towards_point
					(other.cursor.x+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]), 
					 other.cursor.y+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]),
					 global.weaponArray[other.arm,5]);
					}
				*/
				
				}
				//创建弹壳
					with (instance_create_depth(x+lengthdir_x(global.weaponArray[arm,4],image_angle),y+lengthdir_y(global.weaponArray[arm,4],image_angle),-1,objBulletShell))
					{		
					direction = random(360);
					image_angle = random(360);
					speed = random_range(1,5);
					}	
				}
			if arm = 0 { clipAmmo -=0;} 
			else  {clipAmmo -= 1;}
			}
		}
	}
}