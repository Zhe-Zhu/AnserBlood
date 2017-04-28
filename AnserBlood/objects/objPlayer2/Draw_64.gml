draw_set_color(c_white)
draw_set_font(font_stat)
draw_text(100+960,650,"X " + string(ammo) + "/90");
with draw_sprite(sprAmmoAmount,0,60+960,650)
{
	image_speed = 1;
}