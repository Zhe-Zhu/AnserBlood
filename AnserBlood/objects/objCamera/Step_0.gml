//camera_set_view_border(view_camera[0],camH/2,camV/2);
//camera_set_view_border(view_camera[1],320,240);

camera_set_view_pos(view_camera[0],objPlayer1Cam.x + shake -240,objPlayer1Cam.y + shake -180);
camera_set_view_pos(view_camera[1],objPlayer2Cam.x-240,objPlayer2Cam.y-180);

shake *= decay;

//var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);










/*
var xTo,yTo;

move_towards_point(mouse_x,mouse_y,0);
xTo = objPlayer.x + lengthdir_x(min(64,distance_to_point(mouse_x,mouse_y)),direction)
yTo = objPlayer.y + lengthdir_y(min(64,distance_to_point(mouse_x,mouse_y)),direction)

x += (xTo-x)/15;
y += (yTo-y)/15;

