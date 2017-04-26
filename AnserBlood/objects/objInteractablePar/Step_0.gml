
//被拉相关的代码
targetX = objPlayer.x + lengthdir_x(15,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
targetY = objPlayer.y + lengthdir_y(15,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));

if isPulled = 1
{
	state = scr_enemyStun;
	sprite_index = pulled;
	direction = point_direction(x,y,objPlayer.x,objPlayer.y);
	image_angle = direction + random_range(-5,5);
	curMass --;
	if curMass <= 0
	{
	//move_towards_point(targetX,targetY,13);
	x = Approach(x,targetX,objPlayer.pullSpeed)
	y = Approach(y,targetY,objPlayer.pullSpeed)
	}	
}	else 
	{
	isPulled = 0;
	curMass = mass;
	}


//collisions
if hspeed!= 0
{
if!place_free(x+hspeed,y)
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

//是否掉落
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

script_execute(state);