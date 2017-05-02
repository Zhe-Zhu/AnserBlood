x = objSaftyPoint.x 
y = objSaftyPoint.y

if objGame.safeZoneStatus = 0	
{
	if objGame.safeZoneLevel = 1
	{
	image_xscale -= 1/(7*60);
	image_yscale -= 1/(7*60);
	}
	else 
	{
	image_xscale -= 1/(12*60);
	image_yscale -= 1/(12*60);
	}
}