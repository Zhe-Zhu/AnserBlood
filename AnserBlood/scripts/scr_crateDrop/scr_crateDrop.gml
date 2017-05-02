var randomDrop = random(95);

if randomDrop <= 38 {return objPropsAmmo;}
if randomDrop >= 39 && randomDrop<= 50 {return objPropsArmor;}
if randomDrop >= 51 && randomDrop<= 60 {return objWeaponRifle;}
if randomDrop >= 61 && randomDrop<= 70 {return objWeaponShotgun;}
if randomDrop >= 71 && randomDrop<= 85 {return objWeaponUzi;}
if randomDrop >= 86 && randomDrop<= 95 {return objPropsFragmentation;}