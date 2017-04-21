speed = 18;
direction = point_direction(x,y,mouse_x,mouse_y);

speed *= 0.8;

if speed <3 
{
	state = scr_enemyStun;
}

