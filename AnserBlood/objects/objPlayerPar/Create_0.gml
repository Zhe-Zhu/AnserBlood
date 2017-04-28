hspd = 0
vspd = 0
walkingSpeed = 3.5;
fric = 2;
hp = 20;
hpMax = 20;
ammo = 10;

depth = - 99;
//携带武器 0为初始空武器
arm = 0;

firing = false;

threshold =.2;
curPreDirection = 0;
curDistance = 50;

// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodSplatChance = 40;              //blood amount/chance to spawn
bloodPartileChance = 50;              //blood amount/chance to spawn
bloodTimer = 10+irandom(10);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 20;            //bleed direction randomization
bloodRandPos = 10;            //bleed position randomization