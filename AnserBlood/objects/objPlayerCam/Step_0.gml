x += (belongsTo.cursor.x - x) /15 ;
y += (belongsTo.cursor.y - y) /15 ;

camera_set_view_pos(view_camera[belongsTo.playerNumber],x -400 + shake1,y -225 + shake1);

shake1 *= decay;