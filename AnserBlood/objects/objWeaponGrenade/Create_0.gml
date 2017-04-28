image_speed = 0;
image_angle = random(360);

fuze = 60;
throwPower = 0.2;

// Spin direction
dir = choose(-1, 1);

// Explosion settings
spawnStart = true;            //spawn blood puddle immediately
bloodParticleChance = 80;              //blood amount/chance to spawn
bloodTimer = 20+irandom(5);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 20;            //bleed position randomization