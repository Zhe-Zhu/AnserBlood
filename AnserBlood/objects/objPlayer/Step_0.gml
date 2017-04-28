event_inherited();

global.cursor1X = cursor.x;
global.cursor1Y = cursor.y;

//播放动画的规则
script_execute(scr_animate);



//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//屏幕抖动
	objCamera.shake1 += random_range(3,6);

	//射击
	if firing = false
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


