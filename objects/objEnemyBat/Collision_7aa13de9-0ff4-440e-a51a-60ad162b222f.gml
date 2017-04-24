
//script_execute(scr_killText);

instance_destroy()

	with instance_create_depth(x,y,-1,objEnemyCorpse)
	
	image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);

	with instance_create_depth(other.x,other.y,-1,objBloodSmoke1)
	{
	image_xscale = random_range(2,3);
	image_yscale = random_range(2,3);
	image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);
	}

//script_execute(scr_deactivate)
