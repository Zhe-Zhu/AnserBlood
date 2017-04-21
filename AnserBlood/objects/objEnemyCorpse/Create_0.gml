sprite_index = choose (sprEnemyDeadChop,sprEnemyDead,sprEnemyDeadCutThroat);
image_xscale = -1;
image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
speed = 8;
direction = point_direction(objPlayer.x,objPlayer.y,x,y);
