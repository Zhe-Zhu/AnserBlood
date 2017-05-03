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
    for (j = 0; j < 15; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Pistol
global.weaponArray[0,0] = 0
global.weaponArray[0,1] = sprWeaponKandao; //Sprite Index
global.weaponArray[0,2] = 20; //Rate of Fire
global.weaponArray[0,3] = objBulletPistol; //Ammo Index
global.weaponArray[0,4] = 15 //Muzzle Offset x
global.weaponArray[0,5] = 10 //Bullet Speed
global.weaponArray[0,6] = 2 //BulletDeviation
global.weaponArray[0,7] = 8 //Ammo Amount per clip
global.weaponArray[0,8] = sprPlayerPistolWalk //Player Sprite Index
global.weaponArray[0,9] = "Knife" // Name
global.weaponArray[0,10] = sprPlayerPistolFire //Player Sprite Attack Index
global.weaponArray[0,11] = 1 //Bullets per shot
global.weaponArray[0,12] = objWeaponPistol //Weapon Object
global.weaponArray[0,13] = 0 //Reload Time(Frames)
global.weaponArray[0,14] = 2 //Bullet Damage

//[1] Rifle
global.weaponArray[1,0] = 1
global.weaponArray[1,1] = sprRifle; //Sprite Index
global.weaponArray[1,2] = 7; //Rate of Fire
global.weaponArray[1,3] = objBulletRifle; //Ammo Index
global.weaponArray[1,4] = 55 //Muzzle Offset x
global.weaponArray[1,5] = 14 //Bullet Speed
global.weaponArray[1,6] = 7 //BulletDeviation
global.weaponArray[1,7] = 28 //Ammo Amount per clip
global.weaponArray[1,8] = sprPlayerRifleWalk //Player Sprite Index
global.weaponArray[1,9] = "Rifle" // Name
global.weaponArray[1,10] = sprPlayerRifleFire //Player Sprite Attack Index
global.weaponArray[1,11] = 1 //Bullets per shot
global.weaponArray[1,12] = objWeaponRifle //Weapon Object
global.weaponArray[1,13] = 130 //Reload Time(Frames)
global.weaponArray[1,14] = 3 //Bullet Damage
//[2] Shotgun
global.weaponArray[2,0] = 2
global.weaponArray[2,1] = sprShotgun; //Sprite Index
global.weaponArray[2,2] = 60; //Rate of Fire
global.weaponArray[2,3] = objBulletShotgun; //Ammo Index
global.weaponArray[2,4] = 60 //Muzzle Offset x
global.weaponArray[2,5] = random_range(15,20) //Bullet Speed
global.weaponArray[2,6] = 7 //BulletDeviation
global.weaponArray[2,7] = 3 //Ammo Amount per clip
global.weaponArray[2,8] = sprPlayerShotgunWalk //Player Sprite Index
global.weaponArray[2,9] = "Shotgun" // Name
global.weaponArray[2,10] = sprPlayerShotgunFire //Player Sprite Attack Index
global.weaponArray[2,11] = 8 //Bullets per shot
global.weaponArray[2,12] = objWeaponShotgun //Weapon Object
global.weaponArray[2,13] = 160 //Reload Time(Frames)
global.weaponArray[2,14] = 3.5 //Bullet Damage
//[3] Uzi
global.weaponArray[3,0] = 3
global.weaponArray[3,1] = sprUzi; //Sprite Index
global.weaponArray[3,2] = 3; //Rate of Fire
global.weaponArray[3,3] = objBulletPistol; //Ammo Index
global.weaponArray[3,4] = 60 //Muzzle Offset x
global.weaponArray[3,5] = 12 //Bullet Speed
global.weaponArray[3,6] = 13 //BulletDeviation
global.weaponArray[3,7] = 20 //Ammo Amount per clip
global.weaponArray[3,8] = sprPlayerUziWalk //Player Sprite Index
global.weaponArray[3,9] = "Uzi" // Name
global.weaponArray[3,10] = sprPlayerUziWalk  //Player Sprite Attack Index
global.weaponArray[3,11] = 1 //Bullets per shot
global.weaponArray[3,12] = objWeaponUzi //Weapon Object
global.weaponArray[3,13] = 100 //Reload Time(Frames)
global.weaponArray[3,14] = 2 //Bullet Damage










//[8] Heavy Machine Gun
global.weaponArray[8,0] = 8
global.weaponArray[8,1] = sprWeaponHeavyMachineGun; //Sprite Index
global.weaponArray[8,2] = 2; //Rate of Fire
global.weaponArray[8,3] = objBulletRifle; //Ammo Index
global.weaponArray[8,4] = 80 //Muzzle Offset x
global.weaponArray[8,5] = 18 //Bullet Speed
global.weaponArray[8,6] = 15 //BulletDeviation
global.weaponArray[8,7] = 200 //Ammo Amount per clip
global.weaponArray[8,8] = sprPlayerDrive //Player Sprite Index
global.weaponArray[8,9] = "HVG" // Name
global.weaponArray[8,10] = sprPlayerDrive  //Player Sprite Attack Index
global.weaponArray[8,11] = 1 //Bullets per shot
global.weaponArray[8,12] = objWeaponHeavyMachineGun //Weapon Object
global.weaponArray[8,13] = 200 //Reload Time(Frames)
global.weaponArray[8,14] = 2.5 //Bullet Damage