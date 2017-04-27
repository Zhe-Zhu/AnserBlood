	// check if the game is paused
if global.gameSpeed <1
{
	exit;
}

//状态机
switch(state)
{
	case st.normal:
	{
		sprite_index = sprPlayerWalk;
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

hspeed = global.timeMul * walkingSpeed * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
vspeed = global.timeMul * walkingSpeed * (keyboard_check(ord("S")) - keyboard_check(ord("W")));

// gamepad move

if (gamepad_is_connected(0))
{
	scr_move_gamepad(0);
}

// update cursor position
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

// range attack
if (gamepad_button_check(0, gp_shoulderr))
{
	//屏幕抖动
	objGame.shaking =1;
	objGame.shake += random_range(0.25,0.4);
	objGame.zoom_level = 0.9;

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





//collisions
if hspeed!= 0
{if!place_free(x+hspeed,y)
    {
    if hspeed > 0 {move_contact_solid(0,hspeed)}; //向右
    if hspeed < 0 {move_contact_solid(180,-hspeed)}; //向左
    hspeed = 0;
    }
}
if vspeed!= 0
{if!place_free(x,y+vspeed)
    {
    if vspeed > 0 {move_contact_solid(270,vspeed)}; //向右
    if vspeed < 0 {move_contact_solid(90,-vspeed)}; //向左
    vspeed = 0;
    }
}
dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dir;



