//跟随玩家
if instance_exists(belongsTo)
{
	x = belongsTo.x
	y = belongsTo.y

if belongsTo.playerNumber = 0 and instance_exists(belongsTo)
{image_angle = objCursor1.image_angle};
else if belongsTo.playerNumber = 1 and instance_exists(belongsTo) 
{image_angle = objCursor2.image_angle};
else 
{instance_destroy()}


}