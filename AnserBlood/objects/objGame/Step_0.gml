//摄像机角度偏斜
camera_set_view_angle(view_camera[0], (mouse_x -objPlayer.x)/230);

//重启游戏
if keyboard_check(ord("R"))

{
game_restart();
}

//连杀显示
if global.killCount >= 5
{
	instance_create_depth(x,y,-100,objKillingSpree);
}


//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[target_view]);
var vpos_y = camera_get_view_y(view_camera[target_view]);
var vpos_w = camera_get_view_width(view_camera[target_view]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[target_view]) * 0.5;

//The interpolation rate
var rate = 0.2;

//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, objCamera.x - vpos_w, rate);
var new_y = lerp(vpos_y, objCamera.y - vpos_h, rate);

//Update the view position
camera_set_view_pos(view_camera[target_view], new_x, new_y);

//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.2), 0.2, 5);

//Get current size
var view_w = camera_get_view_width(view_camera[target_view]);
var view_h = camera_get_view_height(view_camera[target_view]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by lerping current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[target_view], new_w, new_h);

/*Get the shift necessary to re-align the view.
var shift_x = camera_get_view_x(view_camera[target_view]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[target_view]) - (new_h - view_h) * 0.5;

//Update the view position
camera_set_view_pos(view_camera[target_view],shift_x, shift_y);

*/
if shaking = 1
{
	script_execute(scr_shake);
	if shake  <= 0.1
	{shaking = 0;}
}

if zoom_level < 1
{
	zoom_level +=0.008
} else
zoom_level = 1;
