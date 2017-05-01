
hp = 20;
hpMax = 20;

inRoom = 0;
inBush = 0;
isThrowing = 0;

depth = - 99;
//携带武器 0为初始空武器
arm = 0;
armor = 0;
grenadeAmount = 2;

firing = false;

//指针
threshold =.2;
curPreDirection = 0;
curDistance = 50;

viewAngle = 30;                  // -+30 degree
aggroRange = 480;

//装弹
clipAmmo = 10;
ammo = 150;
progress = 0;
doing = 0;
finish = 100;

// Blood settings
spawnStart = true;            //spawn blood puddle immediately
bloodSplatChance = 30;              //blood amount/chance to spawn
bloodPartileChance = 40;              //blood amount/chance to spawn
bloodTimer = 20+irandom(20);  //bleed duration
bloodDir = random(360);       //bleed direction
bloodRandDir = 40;            //bleed direction randomization
bloodRandPos = 8;            //bleed position randomization

//插件移动
walkSpeed=2.6;
walkAcceleration = walkSpeed*.1;
againstWall=0;

timer=0;
moveDirection=-1;
moveSpeed=0;
frictionEnabled=true;
