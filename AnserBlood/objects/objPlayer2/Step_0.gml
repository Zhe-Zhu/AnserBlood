event_inherited();

global.cursor2X = cursor.x;
global.cursor2Y = cursor.y;


//SHOOT
if (gamepad_button_check(playerNumber, gp_shoulderr))
{
	//屏幕抖动
	objCamera.shake2 += random_range(3,6);

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
			(global.cursor2X+random_range(-10,10), 
			global.cursor2Y+random_range(-10,10),
			global.weaponArray[other.arm,5]);

		}
		alarm[0] = global.weaponArray[arm,2];
		}
}


//角色朝向
image_angle = rdirection;
script_execute(scr_animate);

