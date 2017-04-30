secondCorner_x = x + lengthdir_x(aggroRange, image_angle - viewAngle);
secondCorner_y = y + lengthdir_y(aggroRange, image_angle - viewAngle);

thirdCorner_x = x + lengthdir_x(aggroRange, image_angle + viewAngle);
thirdCorner_y = y + lengthdir_y(aggroRange, image_angle + viewAngle);

draw_set_color(c_black);

{
	draw_triangle(x, y, secondCorner_x, secondCorner_y, thirdCorner_x, thirdCorner_y, true);

}