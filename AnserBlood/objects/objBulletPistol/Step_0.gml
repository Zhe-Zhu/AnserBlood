event_inherited();
speed *=random_range(0.98,0.99);
if speed <= 0.8 
{ 
	image_alpha -= 0.15
	if image_alpha <=0.5
	{
	instance_destroy();
	}
}

damage = damage * speed / 14; 