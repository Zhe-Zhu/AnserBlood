var randomDrop = random(95);

if randomDrop <= 38 {return objAmmo;}
if randomDrop >= 39 && randomDrop<= 50 {return objArmor;}
if randomDrop >= 51 && randomDrop<= 65 {return objWeaponRifle;}
if randomDrop >= 66 && randomDrop<= 80 {return objWeaponShotgun;}
if randomDrop >= 81 && randomDrop<= 95 {return objWeaponUzi;}