//子弹时间系统
global.pausing = 0;
global.killCount = 0;


//Zoom variables
zoom_level = 1;
default_zoom_width = camera_get_view_width(view_camera[0])*0.6;
default_zoom_height = camera_get_view_height(view_camera[0])*0.6;

scr_weaponArray();

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