//子弹时间系统
global.timeMul = 1;
global.gameSpeed = 30;
global.pausing = 0;
global.killCount = 0;

shaking = 0;
shake = 0;
decay = 0.80;


//Zoom variables
zoom_level = 1;
default_zoom_width = camera_get_view_width(view_camera[0])*0.6;
default_zoom_height = camera_get_view_height(view_camera[0])*0.6;
