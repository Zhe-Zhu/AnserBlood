//gamepad move
if (gamepad_is_connected(playerNumber))
{
	scr_move_gamepad(playerNumber);
}

//更新指针位置
rxaxis = gamepad_axis_value(playerNumber, gp_axisrh);
ryaxis = gamepad_axis_value(playerNumber, gp_axisrv);

//指针方向
//rdirection = point_direction(0, 0, xaxis, yaxis);	// 跟左摇杆
//rmagnitude = point_distance(0, 0, xaxis, yaxis);

rdirection = point_direction(0, 0, rxaxis, ryaxis);  // 跟右摇杆
rmagnitude = point_distance (0, 0, rxaxis, ryaxis);


if (rmagnitude >= threshold) 
{
	cursor.image_angle = rdirection;
	curPreDirection = rdirection;
	image_angle = rdirection;
}

cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);

//决定玩家sprite
if firing = true {sprite_index = global.weaponArray[arm,10];}
else {sprite_index = global.weaponArray[arm,8]} 


//播放动画的规则
if moveSpeed != 0 || firing = true
{
    image_speed = 1;
}   else    
    {
    image_index = 0;
    image_speed = 0;
    }
//玩家移动速度
walkSpeed = 2.6 + global.weaponArray[arm,17];

//进入遮蔽区
if position_meeting(x,y,objHidingSpace)
{
	with position_meeting(x,y,objHidingSpace)
	{
	other.inRoom = id;
	}
}	
else
	{
	inRoom = 0; 
	}

if inBush = true
	{
	image_alpha = 0.6;
	}
else
	{
	image_alpha = 1;
	}


//装弹
if arm != 0 //判断是否持有武器
{
if clipAmmo <= 0 and ammo >0	{doing = 1;}
if doing = 1					{progress += 1;	}

if progress >= global.weaponArray[arm,13]
	{
	doing = 0;
	progress = 0;
	
	if ammo >= global.weaponArray[arm,7] 
		{
		ammo -= global.weaponArray[arm,7]; 
		clipAmmo = global.weaponArray[arm,7] 
		}
		else
		{
		clipAmmo = ammo;
		ammo = 0;
		}
	}
}

//丢手雷

if (gamepad_button_check_pressed(playerNumber, gp_face3))
	{	
		if isThrowing = 0 and grenadeAmount >0 
		{
		with instance_create_depth(x+lengthdir_x(20,image_angle),y+lengthdir_y(20,image_angle),-1,objGrenadeFragmentation)
		{
		speed = 8;
		direction = point_direction(x,y,other.cursor.x,other.cursor.y  )
		}	
		grenadeAmount --;
		isThrowing = 20;
		}	
	}


isThrowing --;
if isThrowing <0 {isThrowing = 0;}

//PICKING UP STUFF AND THROWING STUFF
if (gamepad_button_check_pressed(playerNumber, gp_face2))
{
	if arm != 0  and !place_meeting(x,y,objProps)
		{
			with instance_create_depth(x,y,-1,global.weaponArray[arm,12])
			{
			speed = 7;
			direction = point_direction(x,y,other.cursor.x,other.cursor.y  )
			cantPick = 1;
			}
			arm = 0;
		}
		
		with instance_place(x, y, objLootWeaponPar)
			{
			if other.arm = 0 and cantPick = 0
				{
				other.arm = weaponIndex;
				instance_destroy();
				}
			}
			
	//捡子弹条件	
	if ammo < 120
	{
		with instance_place(x, y, objPropsAmmo)
		{
		other.ammo += 40;
		instance_destroy();
		}
	}		
	//捡手雷条件
	if grenadeAmount < 5
	{
		with instance_place(x, y, objPropsFragmentation)
		{
		other.grenadeAmount += 1;
		instance_destroy();
		}
	}	
	//捡护甲条件
	if hp < hpMax
	{
		with instance_place(x, y, objPropsArmor)
		{
		other.hp += 15;
		instance_destroy();
		}
	}	
	if hp > hpMax {hp = hpMax}	
	
	//捡护甲条件
	if coinAmount = 0
	{
		with instance_place(x, y, objCoin)
		{
		other.coinAmount +=1;
		instance_destroy();
		}
	}	
}



//不在安全区就要掉血
/*
if !place_meeting(x,y,objSafezone)
{
	inSafeZone = false;
	hp -= 0.03;	
}
else 
{
inSafeZone = true;
}
*/

//流血和死掉
if random(100) <= 3
{
	if hp/hpMax <= 0.5 
	{
		//制造血迹
		for (i = 0; i < random(2); i++)
		{
			with(instance_create_depth(x,y,-1,objBloodParticle)) 
			{
					speed = random_range(2,3);
					direction = random(360);
					image_angle = direction;
			}
		}
	}
}

if hp <= 0
{
		if coinAmount >=1 
		{
			with instance_create_depth(x,y,-1,objCoin)
			{
			speed = random(8);
			direction = random(360);
			}
		}
		with instance_create_depth(x,y,-1,global.weaponArray[arm,12])
		{
		speed = 7;
		direction = random(360);
		cantPick = 1;
		}
		//创造尸体
		
		with instance_create_depth(x,y,-2,objPlayerCorpseBat)
		{
		fallDir = other.fallDir;
		toBullet = other.toBullet;
		image_angle = fallDir;
		speed = 8;
		direction = fallDir;
		}
		
		instance_destroy()
		
		
}

//子弹和护甲数量限制
if ammo > 80	{ammo = 80;}	

