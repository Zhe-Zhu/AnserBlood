event_inherited();

if drop =1
{
	speed *= 0.85;
	image_angle += 35;
	
}
if speed <2 
{
	speed = 0;
	drop = 0;
}

if throwing = 1
{
image_angle += 35;
}