//状态机
switch(state)
{
	case st.normal:
	{
		sprite_index = sprPlayerUnarmedWalk;
		script_execute(scr_animate);//当角色不移动的时候，不播放动画
		break;
	}
	case st.attack:
	{
		sprite_index = sprPlayerAttack;
		script_execute(scr_attack);
		break;
	}
	case st.shoot:
	{
		sprite_index = sprPlayerAttack;
		script_execute(scr_shoot);
		break;
	}
	case st.dead:
	{
		exit;
		break;
	}
}


//gamepad move
if (gamepad_is_connected(0))
{
	scr_move_gamepad(0);
}

//update cursor position
rxaxis = gamepad_axis_value(0, gp_axisrh);
ryaxis = gamepad_axis_value(0, gp_axisrv);
rdirection = point_direction(0, 0, rxaxis, ryaxis);
rmagnitude = point_distance(0, 0, rxaxis, ryaxis);

if (rmagnitude >= threshold) {
	cursor.image_angle = rdirection;
	curPreDirection = rdirection;
	image_angle = rdirection;
}

cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);

global.cursor1X = cursor.x;
global.cursor1Y = cursor.y;

//SHOOT
if (gamepad_button_check(0, gp_shoulderr))
{
	//屏幕抖动
	objCamera.shake1 += random_range(0.5,1);

	//射击
	if firing = false
		{
		firing = true;
		with (instance_create_depth(x,y,-1,objBullet))
		{
			direction = other.curPreDirection;
			image_angle = direction;
		}
		alarm[0] = 3;
		}
}

//PICKING UP STUFF

if (gamepad_button_check_pressed(0, gp_face2))
{
	if arm = 0
	{
			with instance_place(x, y, objLootWeaponPar)
			{
			objPlayer.arm = weaponIndex;
			instance_destroy();
			}
	}	
	else if arm = 1
	{
		with instance_create_depth(x,y,-1,objWeaponRifle)
		{
		speed = 12;
		direction = point_direction(x,y,global.cursor1X  ,global.cursor1Y  )
		}
		arm = 0;
	}

}





