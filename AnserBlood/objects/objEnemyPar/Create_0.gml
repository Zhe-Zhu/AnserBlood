event_inherited();
state = scr_enemyStatic;
attInterval = 12;
cooldown = attInterval;

//variables
enemySpeed = 1.2;
alerted = false;
attackRange= 30;
isFalling = 0;

alive = 1;

drop = 0;
throwing = 0;
throwMul = 2;

fallDir = point_direction(x,y,objPlayer.x,objPlayer.y);


// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodSplatChance = 30;              //blood amount/chance to spawn
bloodPartileChance = 40;              //blood amount/chance to spawn
bloodTimer = 5+irandom(10);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 10;            //bleed position randomization

// View range settings
viewAngle = 30;                  // -+30 degree
aggroRange = 120;
giveupRange = 270;               // not to pursuit