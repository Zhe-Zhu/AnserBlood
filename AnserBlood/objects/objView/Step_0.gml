//跟随玩家
if instance_exists(belongsTo)
{
	x = belongsTo.x
	y = belongsTo.y
	
	//根据玩家武器决定视野大小远近
	image_xscale = global.weaponArray[belongsTo.arm,15];
	image_yscale = global.weaponArray[belongsTo.arm,16];


image_angle = belongsTo.cursor.image_angle;
}
else 
{instance_destroy()}

