//判断是否存在玩家
if instance_exists(belongsTo)
{
//跟随玩家
x = belongsTo.x;
y = belongsTo.y - 50;

if belongsTo.inSafeZone = false 
	{image_alpha = 1;} 
else if belongsTo.inSafeZone = true
	{image_alpha = 0.05;}
}
	
if !instance_exists(belongsTo)
{
	instance_destroy();
}

