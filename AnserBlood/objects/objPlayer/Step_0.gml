
hspeed = walkingSpeed * (keyboard_check(ord("D")) - keyboard_check(ord("A")));
vspeed = walkingSpeed * (keyboard_check(ord("S")) - keyboard_check(ord("W")));

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

switch(state)
{
	case st.normal:
	{
		//script_execute(scr_animate);//当角色不移动的时候，不播放动画
		break;
	}
	
	case st.attack:
	{
		
		break;
	}

	case st.dead:
	{
		
		break;
	}
}

