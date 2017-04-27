hspd = 0
vspd = 0
walkingSpeed = 3.5;
fric = 2;
depth = - 99;
arm = 0;

//instance_create_depth(x,y,2,objPlayerLegs);
instance_create_depth(x,y,0,objPlayer2Cam)

//游标
cursor = instance_create_depth(x, y, 0, objCursor);
curDistance = 50;
curPreDirection = 0;

firing = false;

global.cursor2X = 0;
global.cursor2Y = 0;