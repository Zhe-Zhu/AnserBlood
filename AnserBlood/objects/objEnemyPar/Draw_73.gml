/// @description Insert description here
// You can write your code in this editor

secondCorner_x = x + lengthdir_x(aggroRange, image_angle - viewAngle);
secondCorner_y = y + lengthdir_y(aggroRange, image_angle - viewAngle);

thirdCorner_x = x + lengthdir_x(aggroRange, image_angle + viewAngle);
thirdCorner_y = y + lengthdir_y(aggroRange, image_angle + viewAngle);

draw_set_color(c_black);

//if (id == inst_124616AD)
{
	draw_triangle(x, y, secondCorner_x, secondCorner_y, thirdCorner_x, thirdCorner_y, true);
	draw_circle(x, y, giveupRange, true);
}