	// check if the game is paused
if global.gameSpeed <1
{
	exit;
}

//状态机
switch(state)
{
	case st2.normal:
	{
		sprite_index = sprPlayerWalk;
		script_execute(scr_animate);//当角色不移动的时候，不播放动画
		break;
	}
	case st2.attack:
	{
		sprite_index = sprPlayerAttack;
		script_execute(scr_attack);
		break;
	}
	case st2.shoot:
	{
		sprite_index = sprPlayerAttack;
		script_execute(scr_shoot);
		break;
	}
	case st2.dead:
	{
		exit;
		break;
	}
}

hspeed = global.timeMul * walkingSpeed * (keyboard_check(vk_right) - keyboard_check(vk_left));
vspeed = global.timeMul * walkingSpeed * (keyboard_check(vk_down) - keyboard_check(vk_up));
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



