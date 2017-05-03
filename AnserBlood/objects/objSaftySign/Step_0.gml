if !instance_exists(belongsTo)
{
	instance_destroy();
}

//判断是否存在玩家
if instance_exists(belongsTo)
{
dis = point_distance(belongsTo.x,belongsTo.y,objSaftyPoint.x,objSaftyPoint.y)
dir = point_direction(belongsTo.x,belongsTo.y,objSaftyPoint.x,objSaftyPoint.y)

image_angle = dir;

x = belongsTo.x + lengthdir_x(min(220,dis),dir);
y = belongsTo.y + lengthdir_y(min(200,dis),dir);
}
