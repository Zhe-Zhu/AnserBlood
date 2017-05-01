var randomDrop = random(100);

if randomDrop <= 30 {return objAmmo;}
if randomDrop >= 31 && randomDrop<= 40 {return objArmor;}
if randomDrop >= 41 && randomDrop<= 60 {return objWeaponRifle;}
if randomDrop >= 61 && randomDrop<= 80 {return objWeaponShotgun;}
if randomDrop >= 81 && randomDrop<= 100 {return objWeaponUzi;}