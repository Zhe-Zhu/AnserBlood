
//script_execute(scr_killText);

//script_execute(scr_hitFeel)
alive -=1;

if alive <= 0 
{
instance_destroy()

	with instance_create_depth(x,y,-1,objEnemyCorpse)
	
	//image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);

	with instance_create_depth(other.x,other.y,-1,objBloodSmoke1)
	{
	image_xscale = random_range(2,3);
	image_yscale = random_range(2,3);
	//image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);
	}
}
