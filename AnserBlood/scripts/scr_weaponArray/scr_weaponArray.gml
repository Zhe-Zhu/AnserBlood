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
for (i =0; i < 3; i ++)
{
    for (j = 0; j < 10; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Knife
global.weaponArray[0,0] = 0
global.weaponArray[0,1] = sprWeaponKandao; //Sprite Index
global.weaponArray[0,2] = 20; //Rate of Fire
global.weaponArray[0,3] = objHitbox; //Ammo Index
global.weaponArray[0,4] = 10 //Muzzle Offset x
global.weaponArray[0,5] = 0 //Bullet Speed
global.weaponArray[0,6] = 0 //BulletDeviation
global.weaponArray[0,7] = 1 //Ammo Amount per clip
global.weaponArray[0,8] = sprPlayerUnarmedWalk //Player Sprite Index
global.weaponArray[0,9] = "Knife" // Name
global.weaponArray[0,10] = sprPlayerUnarmedWalk //Player Sprite Attack Index
global.weaponArray[0,11] = 1 //Bullets per shot
global.weaponArray[0,12] = objWeaponRifle //Weapon Object
global.weaponArray[0,13] = 0 //Reload Time(Frames)

//[1] Rifle
global.weaponArray[1,0] = 1
global.weaponArray[1,1] = sprRifle; //Sprite Index
global.weaponArray[1,2] = 6; //Rate of Fire
global.weaponArray[1,3] = objBullet; //Ammo Index
global.weaponArray[1,4] = 10 //Muzzle Offset x
global.weaponArray[1,5] = 14 //Bullet Speed
global.weaponArray[1,6] = 10 //BulletDeviation
global.weaponArray[1,7] = 28 //Ammo Amount per clip
global.weaponArray[1,8] = sprPlayerRifleWalk //Player Sprite Index
global.weaponArray[1,9] = "Rifle" // Name
global.weaponArray[1,10] = sprPlayerRifleFire //Player Sprite Attack Index
global.weaponArray[1,11] = 1 //Bullets per shot
global.weaponArray[1,12] = objWeaponRifle //Weapon Object
global.weaponArray[1,13] = 90 //Reload Time(Frames)

//[2] Shotgun
global.weaponArray[2,0] = 1
global.weaponArray[2,1] = sprShotgun; //Sprite Index
global.weaponArray[2,2] = 45; //Rate of Fire
global.weaponArray[2,3] = objBullet; //Ammo Index
global.weaponArray[2,4] = 10 //Muzzle Offset x
global.weaponArray[2,5] = random_range(15,20) //Bullet Speed
global.weaponArray[2,6] = 4 //BulletDeviation
global.weaponArray[2,7] = 8 //Ammo Amount per clip
global.weaponArray[2,8] = sprPlayerShotgunWalk //Player Sprite Index
global.weaponArray[2,9] = "Shotgun" // Name
global.weaponArray[2,10] = sprPlayerShotgunFire //Player Sprite Attack Index
global.weaponArray[2,11] = 8 //Bullets per shot
global.weaponArray[2,12] = objWeaponShotgun //Weapon Object
global.weaponArray[2,13] = 120 //Reload Time(Frames)