x = objSaftyPoint.x 
y = objSaftyPoint.y

if objGame.safeZoneStatus = 0	
{
	if objGame.safeZoneLevel = 1
	{
	image_xscale -= 1/(6*60);
	image_yscale -= 1/(6*60);
	}
	else 
	{
	image_xscale -= 1/(8*60);
	image_yscale -= 1/(8*60);
	}
}