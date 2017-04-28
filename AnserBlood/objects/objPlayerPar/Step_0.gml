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

