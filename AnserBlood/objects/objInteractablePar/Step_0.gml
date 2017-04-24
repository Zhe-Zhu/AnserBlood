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

script_execute(state);

if position_meeting(x,y,objAir)
{
	isFalling = 1

	image_xscale -= 0.05;
	image_yscale = image_xscale;
	speed *= 0.2;
}

if image_xscale <= 0.1
{
	instance_destroy();
}