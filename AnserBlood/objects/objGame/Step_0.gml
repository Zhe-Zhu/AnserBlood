//摄像机角度偏斜
//camera_set_view_angle(view_camera[0], (mouse_x -objPlayer.x)/230);

//重启游戏
if keyboard_check(ord("R")) or gamepad_button_check_pressed(0,gp_start)


{
game_restart();
}

//连杀显示
if global.killCount >= 5
{
	instance_create_depth(x,y,-100,objKillingSpree);
}

game_set_speed(60, gamespeed_fps);