sprite_index = choose 
(sprEnemyDeadChop,sprEnemyDead,sprEnemyDeadCutThroat,
sprEnemyDeadBlunt1,sprEnemyDeadBlunt2,sprEnemyDeadBlunt3,sprEnemyDeadBlunt4,sprEnemyDeadBlunt5,sprEnemyDeadBlunt6);

//image_xscale = -1;

// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodSplatChance = 30;              //blood amount/chance to spawn
bloodPartileChance = 40;              //blood amount/chance to spawn
bloodTimer = 5+irandom(10);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 10;            //bleed position randomization