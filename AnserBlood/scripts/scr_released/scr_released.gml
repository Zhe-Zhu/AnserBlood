throwing = 1;

if speed > 15
{
direction = point_direction(x,y,mouse_x,mouse_y);
}
speed *= 0.85;

if speed <3 
{
	throwing = 0;
	speed = 0 ; 
}

