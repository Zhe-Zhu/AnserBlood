//子弹时间系统
global.killCount = 0;

//Zoom variables
zoom_level = 1;
default_zoom_width = camera_get_view_width(view_camera[0])*0.6;
default_zoom_height = camera_get_view_height(view_camera[0])*0.6;

//建立武器表
scr_weaponArray();
//安全区刷新倒计时
safeZoneLevel = 1;
safeZoneStatus = 1; //0收缩  1倒计时
countDownSafeZone = alarm[0] / 60; 


randomize();
//创建玩家

	spawn_id = instance_create_depth(0,0,-5, objPlayer);
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

//创建安全区
with instance_create_depth(x,y,4,objSaftyPoint)
{
	x = random_range(room_width/5,room_width*4/5,)
	y = random_range(room_height/5,room_height*4/5,)
}
alarm[0] = (15 - safeZoneLevel*5)*60
