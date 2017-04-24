if global.pulling != 0
{
	with global.pulling
	{
		state = scr_released;
		speed = 20 * throwMul;
	}
	holding = 0;
}

objPlayer.canPull =20;