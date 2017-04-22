speed *=0.80;

move_bounce_solid(true);

// Spawn blood puddles
if bloodTimer > 0 {
	bloodTimer -= 1;
	if random(100) < bloodChance || spawnStart {
		spawnStart = false;
		_x = x-lengthdir_x(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		_y = y-lengthdir_y(30,image_angle)+random_range(-bloodRandPos,bloodRandPos);
		with(instance_create_depth(_x,_y,-1,objBloodSplat)) {
			image_angle = other.bloodDir+random_range(-other.bloodRandDir,other.bloodRandDir)-90;
		}
	}
}