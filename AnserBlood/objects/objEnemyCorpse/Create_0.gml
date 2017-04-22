sprite_index = choose(sprEnemyDeadChop,sprEnemyDead,sprEnemyDeadCutThroat);
image_xscale = -1;
image_angle = point_direction(x,y,objHitbox.x,objHitbox.y);
speed = 12;
direction = point_direction(objHitbox.x,objHitbox.y,x,y);

// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodChance = 8;              //blood amount/chance to spawn
bloodTimer = 50+irandom(20);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 10;            //bleed position randomization
