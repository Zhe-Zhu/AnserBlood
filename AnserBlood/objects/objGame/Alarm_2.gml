//创建随机补给箱
	spawn_id = instance_create_depth(0,0,-5, objCrate);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision1 = place_meeting(x,y,objBarrierPar)
			collision2 = place_meeting(x,y,objPlayerPar)
			collision3 = place_meeting(x,y,objBulletPar)
	    }
	}
	until spawn_id.collision1 and spawn_id.collision2 and spawn_id.collision3 = 0;