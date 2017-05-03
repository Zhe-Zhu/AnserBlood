image_speed = 0;
image_angle = random(360);

fuze = 100;
throwPower = 0.2;

// Spin direction
dir = choose(-1, 1);

// Explosion settings
spawnStart = true;            //spawn blood puddle immediately
bloodParticleChance = 60;              //blood amount/chance to spawn
bloodTimer = 40+irandom(10);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 20;            //bleed position randomization