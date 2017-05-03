//camera_set_view_border(view_camera[0],camH/2,camV/2);
//camera_set_view_border(view_camera[1],320,240);

camera_set_view_pos(view_camera[0],objPlayer1Cam.x -300 + shake1,objPlayer1Cam.y -225 + shake1);
camera_set_view_pos(view_camera[1],objPlayer2Cam.x -300 + shake2,objPlayer2Cam.y -225 + shake2);

shake1 *= decay;
shake2 *= decay;

