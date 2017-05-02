hp = 100;
hpMax = 100;

inRoom = 0;
inBush = 0;
inSafeZone = false;
isThrowing = 0;

//还是要给一个初始值，用来在非接触下死亡时候用
fallDir = random(360);
toBullet = random(360);

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
clipAmmo = 0;
ammo = 20;
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

//安全区提示
with instance_create_depth(x,y-30,-3,objExcMark)
{
	belongsTo = other.id;
}

//安全区指示标
with instance_create_depth(x,y,-10,objSaftySign)
{
	belongsTo = other.id;
}
