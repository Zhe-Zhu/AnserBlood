event_inherited();
state = scr_enemyStatic;
//variables
enemySpeed = 1.2;
alerted = false;
attackRange= 100;

alive = 1;

attackSprite = sprEnemyAttackBat;
normalSprite = sprEnemyWalkBat;
corpse = objEnemyCorpseBat;
pulled = sprEnemyPulledBat;

targetX = objPlayer.x + lengthdir_x(10,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
targetY = objPlayer.y + lengthdir_y(10,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
