event_inherited();

playerNumber = 1;

//instance_create_depth(x,y,2,objPlayerLegs);
instance_create_depth(x,y,0,objPlayer2Cam)

//游标
cursor = instance_create_depth(x, y, 0, objCursor2);
cursor.image_blend = make_colour_hsv(255, 0, 0);

threshold =.2;
curPreDirection = 0;
curDistance = 50;

global.cursor2X = 0;
global.cursor2Y = 0;


shakeCamera = 1;