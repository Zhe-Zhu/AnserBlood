//摄像机角度偏斜
//camera_set_view_angle(view_camera[0], (mouse_x -objPlayer.x)/230);

//重启游戏
if keyboard_check(ord("R")) or gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(1,gp_start)
{
game_restart();
}


game_set_speed(60, gamespeed_fps);


randomize();
//创建玩家
//创建玩家1
	if !instance_exists(objPlayer1)
	{
		spawn_id = instance_create_depth(0,0,-5, objPlayer1);
		do
		{
		    spawn_id.x = random(room_width);
		    spawn_id.y = random(room_height);

		with (spawn_id)
		    {
		        collision = place_meeting(x,y,objBarrierPar)
		    }
		}
		until spawn_id.collision = 0;
	}
//创建玩家2
	if !instance_exists(objPlayer2)
	{
	spawn_id = instance_create_depth(0,0,-5, objPlayer2);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;
	}
//创建玩家3	
	if !instance_exists(objPlayer3)
	{
		spawn_id = instance_create_depth(0,0,-5, objPlayer3);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;
	}
//创建玩家4	
	if !instance_exists(objPlayer4)
	{
		spawn_id = instance_create_depth(0,0,-5, objPlayer4);
	do
	{
	    spawn_id.x = random(room_width);
	    spawn_id.y = random(room_height);

	with (spawn_id)
	    {
	        collision = place_meeting(x,y,objBarrierPar)
	    }
	}
	until spawn_id.collision = 0;
	}








//刷新安全区变化倒计时

//countDownSafeZone = round(alarm[0] / 60);