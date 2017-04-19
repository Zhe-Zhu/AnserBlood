sprite_index = choose (sprEnemyDeadChop,sprEnemyDead,sprEnemyDeadCutThroat);
image_xscale = -1;
image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);
speed = 12;
direction = point_direction(objHitbox.x,objHitbox.y,x,y);
