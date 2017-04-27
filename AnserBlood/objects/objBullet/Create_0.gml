event_inherited();
bulletSpeed = 15;
bulletDeviate = 10;

move_towards_point(global.cursor2X+random_range(-bulletDeviate,bulletDeviate), global.cursor2Y+random_range(-bulletDeviate,bulletDeviate), bulletSpeed);

dir = point_direction(x,y,global.cursor2X,global.cursor2Y);

image_angle = dir;