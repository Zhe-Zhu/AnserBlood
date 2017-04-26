if global.pulling != noone
{
	with global.pulling
	{
		speed = 15 * mass /6
		state = scr_released;
		isPulled = 0;
		curMass = mass;
	}
	holding = 0;
}
