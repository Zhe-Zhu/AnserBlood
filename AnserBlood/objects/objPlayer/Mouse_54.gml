if throwing = 0 and place_meeting(x,y,objWeaponKandao)
{
	
	with instance_place(x,y,objWeaponKandao)
	{
	throwing = 1;
	speed = 15;
	direction = point_direction(x,y,mouse_x,mouse_y);
	}
	
}