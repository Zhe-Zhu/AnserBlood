walkingSpeed = 3.5;
depth = - 99;
holding = 0;

instance_create_depth(x,y,0,objPlayer2Cam)

cursor = instance_create_depth(x, y, 0, objCursor);
curDistance = 50;
curPreDirection = 0;

firing = false;

global.cursor2X = 0;
global.cursor2Y = 0;