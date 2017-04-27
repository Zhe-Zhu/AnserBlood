
var device = 1;

// get_gamepad_input
xaxis = gamepad_axis_value(device, gp_axislh);
yaxis = gamepad_axis_value(device, gp_axislv);
magnitude = point_distance(0, 0, xaxis, yaxis);
if (magnitude > 1) magnitude = 1;

threshold = .2;
spd = 4;

// move player only if you can
if (magnitude >= threshold) {
	x += xaxis*spd;
	y += yaxis*spd;
}

// update cursor position
rxaxis = gamepad_axis_value(device, gp_axisrh);
ryaxis = gamepad_axis_value(device, gp_axisrv);
rdirection = point_direction(0, 0, rxaxis, ryaxis);
rmagnitude = point_distance(0, 0, rxaxis, ryaxis);

if (rmagnitude >= threshold) {
cursor.image_angle = rdirection;
curPreDirection = rdirection;
}

cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);

global.cursor2X = cursor.x;
global.cursor2Y = cursor.y;

// range attack
if (gamepad_button_check(device, gp_shoulderr))
{
	//屏幕抖动
	objCamera.shake2 += random_range(0.25,0.4);

	//射击
	if firing = false
		{
		firing = true;
		with (instance_create_depth(x,y,-1,objBullet))
		{
			direction = other.curPreDirection;
		}
		alarm[0] = 3;
		}
}

//角色朝向
image_angle = rdirection;
script_execute(scr_animate);