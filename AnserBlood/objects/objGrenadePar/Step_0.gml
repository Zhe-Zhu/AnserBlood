// Rotate when thrown
image_angle += (3 * speed)/2 * dir;

// Friction
speed = Approach(speed, 0, 0.17);

//引信
fuze --;
if fuze <= 0
{
	var i;
	for (i =0; i< 12; i++)
	{
		if random(100) < bloodParticleChance || spawnStart 
		{ //spawn sprite animation
		_x = x-lengthdir_x(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		_y = y-lengthdir_y(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		with(instance_create_depth(_x,_y,-1,objExplosion)) 
		{
			speed = random_range(6,8);
			direction = random(360);
			image_angle = direction;
			image_xscale = random_range(0.3,1);
			image_yscale = image_xscale;
		}
	}	
	}	
	instance_destroy();
	spawnStart = false;
}

