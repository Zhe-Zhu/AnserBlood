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
global.weaponArray[0,2] = 10; //Rate of Fire
global.weaponArray[0,3] = objHitbox; //Ammo Index
global.weaponArray[0,4] = 10 //Muzzle Offset x
global.weaponArray[0,5] = 0 //Bullet Speed
global.weaponArray[0,6] = 0 //BulletDeviation
global.weaponArray[0,7] = 0 //Ammo Amount per clip
global.weaponArray[0,8] = sprPlayerUnarmedWalk //Player Sprite Index
global.weaponArray[0,9] = "Knife" // Name
global.weaponArray[0,10] = sprPlayerUnarmedWalk //Player Sprite Attack Index

//[1] Rifle
global.weaponArray[1,0] = 1
global.weaponArray[1,1] = sprRifle; //Sprite Index
global.weaponArray[1,2] = 3; //Rate of Fire
global.weaponArray[1,3] = objBullet; //Ammo Index
global.weaponArray[1,4] = 10 //Muzzle Offset x
global.weaponArray[1,5] = 16 //Bullet Speed
global.weaponArray[1,6] = 10 //BulletDeviation
global.weaponArray[1,7] = 30 //Ammo Amount per clip
global.weaponArray[1,8] = sprPlayerRifleWalk //Player Sprite Index
global.weaponArray[1,9] = "Rifle" // Name
global.weaponArray[1,10] = sprPlayerRifleFire //Player Sprite Attack Index
