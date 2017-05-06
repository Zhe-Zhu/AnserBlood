//Zoom variables
default_zoom_width = camera_get_view_width(view_camera[0])*0.6;
default_zoom_height = camera_get_view_height(view_camera[0])*0.6;

//建立武器表
scr_weaponArray();

//安全区刷新倒计时
safeZoneLevel = 1;
safeZoneStatus = 1; //0收缩  1倒计时
countDownSafeZone = alarm[0] / 60; 




//创建安全区
/*
with instance_create_depth(x,y,4,objSaftyPoint)
{
	x = random_range(room_width/5,room_width*4/5,)
	y = random_range(room_height/5,room_height*4/5,)
}
//设定第一次开始缩小的时间
alarm[0] = (25 - safeZoneLevel*5)*60
