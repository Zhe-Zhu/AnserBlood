//gamepad move
if (gamepad_is_connected(playerNumber))
{
	scr_move_gamepad(playerNumber);
}

sprite_index = global.weaponArray[arm,8]

//update cursor position
rxaxis = gamepad_axis_value(playerNumber, gp_axisrh);
ryaxis = gamepad_axis_value(playerNumber, gp_axisrv);
rdirection = point_direction(0, 0, rxaxis, ryaxis);
rmagnitude = point_distance(0, 0, rxaxis, ryaxis);

if (rmagnitude >= threshold) {
	cursor.image_angle = rdirection;
	curPreDirection = rdirection;
	image_angle = rdirection;
}

cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);




//PICKING UP STUFF AND THROWING STUFF
if (gamepad_button_check_pressed(playerNumber, gp_face2))
{
	if arm = 0
	{
			with instance_place(x, y, objLootWeaponPar)
			{
			other.arm = weaponIndex;
			instance_destroy();
			}
	}	
	else if arm = 1
	{
		with instance_create_depth(x,y,-1,objWeaponRifle)
		{
		speed = 12;
		direction = point_direction(x,y,other.cursor.x,other.cursor.y  )
		}
		arm = 0;
	}
}

//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//屏幕抖动
	if shakeCamera = 1	{objCamera.shake1 += random_range(3,6);}
	if shakeCamera = 2	{objCamera.shake2 += random_range(3,6);}

	//射击
	if firing = false 
	{
		if arm != 0 and ammo >0	//如果是枪
		{
			{
			firing = true;
			ammo -= 1;	
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

//死掉
if hp <= 0
{
	instance_destroy()
	
	with instance_create_depth(x,y,-2,objEnemyCorpseBat)
	{
		fallDir = other.fallDir;
		toBullet = other.toBullet;
		image_angle = fallDir;
		speed = 8;
		direction = fallDir;
	}
}

