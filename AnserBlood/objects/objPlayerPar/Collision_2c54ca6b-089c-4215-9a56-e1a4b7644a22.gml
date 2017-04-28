xx = other.x
yy = other.y
//喷血方向
fallDir = point_direction(xx,yy,x,y)
toBullet = point_direction(x,y,xx,yy)

hp -=10;

//击退
x += lengthdir_x(5,fallDir);
y += lengthdir_y(5,fallDir);
