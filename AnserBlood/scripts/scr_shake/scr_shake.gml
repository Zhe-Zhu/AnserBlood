shake *= decay;

camera_set_view_pos
(view_camera[target_view], 
camera_get_view_x(view_camera[target_view]) + random_range(-shake, shake),
camera_get_view_y(view_camera[target_view]) + random_range(-shake, shake));


