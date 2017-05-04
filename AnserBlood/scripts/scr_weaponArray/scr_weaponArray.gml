/*
[i,0] = weaponIndex
[i,1] = Sprite Index
[i,2] = Rate of Fire
[i,3] = Ammo Index
[i,4] = Muzzle Offset 
[i,5] = Bullet Speed
[i,6] = BulletDeviation
[i,7] = Ammo Amount per clip
[i,8] = Player Sprite Index
[i,9] = Gun Name
[i,10] = Player Sprite Attack Index
*/

//set up empty array
for (i =0; i < 9; i ++)
{
    for (j = 0; j < 18; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Pistol
global.weaponArray[0,0] = 0
global.weaponArray[0,1] = sprWeaponKandao; //Sprite Index
global.weaponArray[0,2] = 20; //Rate of Fire
global.weaponArray[0,3] = objBulletPistol; //Ammo Index
global.weaponArray[0,4] = 10 //Muzzle Offset x
global.weaponArray[0,5] = 13 //Bullet Speed
global.weaponArray[0,6] = 6 //BulletDeviation
global.weaponArray[0,7] = 8 //Ammo Amount per clip
global.weaponArray[0,8] = sprPlayerPistolWalk //Player Sprite Index
global.weaponArray[0,9] = "Knife" // Name
global.weaponArray[0,10] = sprPlayerPistolFire //Player Sprite Attack Index
global.weaponArray[0,11] = 1 //Bullets per shot
global.weaponArray[0,12] = objWeaponPistol //Weapon Object
global.weaponArray[0,13] = 0 //Reload Time(Frames)
global.weaponArray[0,14] = 2 //Bullet Damage
global.weaponArray[0,15] = 1.5 //view Distance(objview.xscale)
global.weaponArray[0,16] = 1.5 //View Angle(objview.yscale)
global.weaponArray[0,17] = 0.6 //Player Move Speed Muldifier
global.weaponArray[0,18] = 0 //Ammo per shot

//[1] Rifle
global.weaponArray[1,0] = 1
global.weaponArray[1,1] = sprRifle; //Sprite Index
global.weaponArray[1,2] = 7; //Rate of Fire
global.weaponArray[1,3] = objBulletRifle; //Ammo Index
global.weaponArray[1,4] = 15 //Muzzle Offset x
global.weaponArray[1,5] = 16 //Bullet Speed
global.weaponArray[1,6] = 9 //BulletDeviation
global.weaponArray[1,7] = 28 //Ammo Amount per clip
global.weaponArray[1,8] = sprPlayerRifleWalk //Player Sprite Index
global.weaponArray[1,9] = "Rifle" // Name
global.weaponArray[1,10] = sprPlayerRifleFire //Player Sprite Attack Index
global.weaponArray[1,11] = 1 //Bullets per shot
global.weaponArray[1,12] = objWeaponRifle //Weapon Object
global.weaponArray[1,13] = 130 //Reload Time(Frames)
global.weaponArray[1,14] = 3 //Bullet Damage
global.weaponArray[1,15] = 2.5 //view Distance(objview.xscale)
global.weaponArray[1,16] = 1.7 //View Angle(objview.yscale)
global.weaponArray[1,17] = -0.2 //Player Move Speed Muldifier
global.weaponArray[1,18] = 1 //Ammo per shot

//[2] Shotgun
global.weaponArray[2,0] = 2
global.weaponArray[2,1] = sprShotgun; //Sprite Index
global.weaponArray[2,2] = 60; //Rate of Fire
global.weaponArray[2,3] = objBulletShotgun; //Ammo Index
global.weaponArray[2,4] = 50 //Muzzle Offset x
global.weaponArray[2,5] = random_range(16,20) //Bullet Speed
global.weaponArray[2,6] = 10 //子弹偏移
global.weaponArray[2,7] = 3 //Ammo Amount per clip
global.weaponArray[2,8] = sprPlayerShotgunWalk //Player Sprite Index
global.weaponArray[2,9] = "Shotgun" // Name
global.weaponArray[2,10] = sprPlayerShotgunFire //Player Sprite Attack Index
global.weaponArray[2,11] = 8 //Bullets per shot
global.weaponArray[2,12] = objWeaponShotgun //Weapon Object
global.weaponArray[2,13] = 160 //Reload Time(Frames)
global.weaponArray[2,14] = 2.7 //Bullet Damage
global.weaponArray[2,15] = 1.25 //view Distance(objview.xscale)
global.weaponArray[2,16] = 2 //View Angle(objview.yscale)
global.weaponArray[2,17] = 0.1 //Player Move Speed Muldifier
global.weaponArray[2,18] = 3 //Ammo per shot


//[3] Uzi
global.weaponArray[3,0] = 3
global.weaponArray[3,1] = sprUzi; //Sprite Index
global.weaponArray[3,2] = 3; //Rate of Fire
global.weaponArray[3,3] = objBulletPistol; //Ammo Index
global.weaponArray[3,4] = 30 //Muzzle Offset x
global.weaponArray[3,5] = 13 //Bullet Speed
global.weaponArray[3,6] = 16 //BulletDeviation
global.weaponArray[3,7] = 20 //Ammo Amount per clip
global.weaponArray[3,8] = sprPlayerUziWalk //Player Sprite Index
global.weaponArray[3,9] = "Uzi" // Name
global.weaponArray[3,10] = sprPlayerUziWalk  //Player Sprite Attack Index
global.weaponArray[3,11] = 1 //Bullets per shot
global.weaponArray[3,12] = objWeaponUzi //Weapon Object
global.weaponArray[3,13] = 100 //Reload Time(Frames)
global.weaponArray[3,14] = 2 //Bullet Damage
global.weaponArray[3,15] = 1.6 //view Distance(objview.xscale)
global.weaponArray[3,16] = 2 //View Angle(objview.yscale)
global.weaponArray[3,17] = 0.4 //Player Move Speed Muldifier
global.weaponArray[3,18] = 1 //Ammo per shot






//[8] Heavy Machine Gun
global.weaponArray[8,0] = 8
global.weaponArray[8,1] = sprWeaponHeavyMachineGun; //Sprite Index
global.weaponArray[8,2] = 2; //Rate of Fire
global.weaponArray[8,3] = objBulletRifle; //Ammo Index
global.weaponArray[8,4] = 30 //Muzzle Offset x
global.weaponArray[8,5] = 18 //Bullet Speed
global.weaponArray[8,6] = 16 //BulletDeviation
global.weaponArray[8,7] = 200 //Ammo Amount per clip
global.weaponArray[8,8] = sprPlayerMGWalk //Player Sprite Index
global.weaponArray[8,9] = "HVG" // Name
global.weaponArray[8,10] = sprPlayerMGFire  //Player Sprite Attack Index
global.weaponArray[8,11] = 1 //Bullets per shot
global.weaponArray[8,12] = objWeaponHeavyMachineGun //Weapon Object
global.weaponArray[8,13] = 200 //Reload Time(Frames)
global.weaponArray[8,14] = 2.5 //Bullet Damage
global.weaponArray[8,15] = 1 //view Distance(objview.xscale)
global.weaponArray[8,16] = 0.8 //View Angle(objview.yscale)
global.weaponArray[8,17] = -1.5 //Player Move Speed Muldifier
global.weaponArray[8,18] = 0 //Ammo per shot