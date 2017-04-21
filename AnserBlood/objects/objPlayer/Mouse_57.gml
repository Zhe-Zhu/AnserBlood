if global.pulling != 0
{
	with global.pulling
	{
		state = scr_released;
		speed = 18 * throwMul;
	}
	holding = 0;
}