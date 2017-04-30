
//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//屏幕抖动
			if shakeCamera = 1	{objCamera.shake1 += random_range(-2,2);}
			if shakeCamera = 2	{objCamera.shake2 += random_range(-2,2);}

	//射击
	if firing = false 
	{
		if arm != 0 and ammo >0	//如果是枪
		{
			{
			firing = true;
			
			ammo -= 1;	
			sprite_index = global.weaponArray[arm,10];
			alarm[0] = global.weaponArray[arm,2];
			
			var i;
			for (i =0; i < global.weaponArray[arm,11]; i ++) 
				{
				with (instance_create_depth(x+lengthdir_x(global.weaponArray[arm,4],image_angle),y+lengthdir_y(global.weaponArray[arm,4],image_angle),-1,global.weaponArray[arm,3]))
				{		
				direction = other.curPreDirection;
				image_angle = direction;
				selfBullet = other.id;
				move_towards_point
				(other.cursor.x+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]), 
				other.cursor.y+random_range(-global.weaponArray[other.arm,6],global.weaponArray[other.arm,6]),
				global.weaponArray[other.arm,5]);
				}
				}	
			}
		
		if arm = 0 //如果是近战
			{
			firing = true;
			sprite_index = global.weaponArray[arm,10]
			with (instance_create_depth(x+lengthdir_x(global.weaponArray[arm,4],image_angle),y+lengthdir_y(global.weaponArray[arm,4],image_angle),-1,global.weaponArray[arm,3]))
			{		
				direction = other.curPreDirection;
				image_angle = direction;
				selfBullet = other.id;
				move_towards_point
				(other.cursor.x+random_range(-10,10), 
				other.cursor.y+random_range(-10,10),
				global.weaponArray[other.arm,5]);
			}
			alarm[0] = global.weaponArray[arm,2];
			}
		}
	}
}
