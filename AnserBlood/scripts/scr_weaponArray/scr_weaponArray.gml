/*
[i,0] = Name
[i,1] = Sprite Index
[i,2] = Rate of Fire
[i,3] = Ammo Index
[i,4] = Muzzle Offset x
[i,5] = Muzzle Offset y
[i,6] = BulletDeviation
[i,7] = Ammo Amount per clip
[i,8] = Player Sprite Index
[i,9] = Gun Name
[i,10] = ???


*/

//set up empty array
for (i =0; i < global.weapons; i ++)
{
    for (j = 0; j < 10; j ++)
    {
        global.weaponArray[i,j] = 0;
    }
}

//[0] Knife
global.weaponArray[0,0] = "Knife" // Name
global.weaponArray[0,1] = spr_knife; //Sprite Index
global.weaponArray[0,2] = noone; //Rate of Fire
global.weaponArray[0,3] = noone; //Ammo Index
global.weaponArray[0,4] = noone //Muzzle Offset x
global.weaponArray[0,5] = 0 //Muzzle Offset y
global.weaponArray[0,6] = -15 //BulletDeviation
global.weaponArray[0,7] = noone //Ammo Amount per clip
global.weaponArray[0,8] = noone //Player Sprite Index
global.weaponArray[0,9] = noone //Gun Name
global.weaponArray[0,10] = noone //???

