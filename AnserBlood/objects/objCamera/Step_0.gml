var xTo,yTo;

move_towards_point(mouse_x,mouse_y,0);
xTo = objPlayer.x + lengthdir_x(min(64,distance_to_point(mouse_x,mouse_y)),direction)
yTo = objPlayer.y + lengthdir_y(min(64,distance_to_point(mouse_x,mouse_y)),direction)

x += (xTo-x)/15;
y += (yTo-y)/15;

