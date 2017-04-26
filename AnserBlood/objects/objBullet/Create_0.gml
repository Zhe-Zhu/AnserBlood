event_inherited();
bulletSpeed = 15;
bulletDeviate = 10;

move_towards_point(mouse_x+random_range(-bulletDeviate,bulletDeviate), mouse_y+random_range(-bulletDeviate,bulletDeviate), bulletSpeed);

dir = point_direction(x,y,mouse_x,mouse_y);

image_angle = dir;