//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);

//Set the port bounds of view 0 to 640x480
view_set_wport(0, 480);
view_set_hport(0, 360);

//Resize and center
//window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, (display_get_height() - view_hport[0]) * 0.5, view_wport[0]*2, view_hport[0]*2);
//surface_resize(application_surface,view_wport[0],view_hport[0]);

//创建对着objCamera的摄像机
camera = camera_create_view(0, 0, 480, 320, 0, objCamera, -1, -1, 240, 160);
view_set_camera(0, camera);
