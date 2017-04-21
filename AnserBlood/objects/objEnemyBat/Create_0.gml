

event_inherited();
state = scr_enemyStatic;
//variables
aggroRange = 250;
enemySpeed = 3;
alerted = false;
attackRange= 64;

alive = 1;

targetX = objPlayer.x + lengthdir_x(10,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
targetY = objPlayer.y + lengthdir_y(10,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
