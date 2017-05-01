//gamepad move
if (gamepad_is_connected(playerNumber))
{
	scr_move_gamepad(playerNumber);
}

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

//重置inroom
if !place_meeting(x,y,objRoomCollision) {inRoom = 0;}

//inBush
if inBush =1 {image_alpha = 0.6};
if !place_meeting(x,y,objBush) {inBush = 0; image_alpha = 1;}

//更新指针位置
rxaxis = gamepad_axis_value(playerNumber, gp_axisrh);
ryaxis = gamepad_axis_value(playerNumber, gp_axisrv);
rdirection = point_direction(0, 0, rxaxis, ryaxis);
rmagnitude = point_distance(0, 0, rxaxis, ryaxis);

if (rmagnitude >= threshold) 
{
	cursor.image_angle = rdirection;
	curPreDirection = rdirection;
	image_angle = rdirection;
}

cursor.x = x + lengthdir_x(curDistance, curPreDirection);
cursor.y = y + lengthdir_y(curDistance, curPreDirection);

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
			
	if ammo < 90
	{
		with instance_place(x, y, objAmmo)
		{
		other.ammo += 30;
		instance_destroy();
		}
	}		
	
	if armor < 100
	{
		with instance_place(x, y, objArmor)
		{
		other.armor += 20;
		instance_destroy();
		}
	}		
}

//SHOOT
script_execute(scr_shoot);

//死掉
if hp <= 0
{
	instance_destroy()
	
	with instance_create_depth(x,y,-2,objPlayerCorpseBat)
	{
		fallDir = other.fallDir;
		toBullet = other.toBullet;
		image_angle = fallDir;
		speed = 8;
		direction = fallDir;
	}
}

//子弹和护甲数量限制
if ammo > 90	{ammo = 90;}	
if armor <0		{armor = 0;}

