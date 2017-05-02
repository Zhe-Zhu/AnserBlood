event_inherited();
speed *=random_range(0.87,0.95);
if speed <= 0.6 
{ 
	image_alpha -= 0.15
	if image_alpha <=0.5
	{
	instance_destroy();
	}
}

damage = damage * speed / 14; 