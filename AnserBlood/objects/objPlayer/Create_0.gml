event_inherited();

//instance_create_depth(x,y,2,objPlayerLegs);
instance_create_depth(x,y,0,objPlayer1Cam)

playerNumber = 0;

//游标
cursor = instance_create_depth(x, y, 0, objCursor1);
cursor.image_blend = make_colour_hsv(255, 0, 0);

threshold =.2;
curPreDirection = 0;
curDistance = 50;

global.cursor1X = 0;
global.cursor1Y = 0;