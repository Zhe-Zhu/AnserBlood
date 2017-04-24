//拉人的蓄力
objPlayer.canPull --;
if objPlayer.canPull <=0

{
targetX = objPlayer.x + lengthdir_x(30,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));
targetY = objPlayer.y + lengthdir_y(30,point_direction(objPlayer.x,objPlayer.y,mouse_x, mouse_y));

//move_towards_point(targetX,targetY,13);
x = Approach(x,targetX,objPlayer.pullSpeed)
y = Approach(y,targetY,objPlayer.pullSpeed)

direction = point_direction(x,y,objPlayer.x,objPlayer.y);
image_angle = direction;
}

