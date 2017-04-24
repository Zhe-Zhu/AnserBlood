// Move away from other enemies
x += lengthdir_x(1, point_direction(other.x, other.y, x, y) + random_range(-10, 10));
y += lengthdir_y(1, point_direction(other.x, other.y, x, y) + random_range(-10, 10));

