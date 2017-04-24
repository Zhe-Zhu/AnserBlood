sprite_index = choose(sprEnemyDeadChop,sprEnemyDead,sprEnemyDeadCutThroat);
image_xscale = -1;
fallDir = point_direction(x,y,objHitbox.x,objHitbox.y);
image_angle = fallDir;
speed = 12;
direction = point_direction(objHitbox.x,objHitbox.y,x,y);

// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodChance = 50;              //blood amount/chance to spawn
bloodTimer = 5+irandom(10);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 10;            //bleed position randomization
