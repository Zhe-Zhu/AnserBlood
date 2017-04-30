event_inherited();
draw_set_color(c_white)
draw_set_font(font_stat)
draw_text(100,650,"X " + string(clipAmmo) + "/" + string(ammo));
draw_sprite(sprAmmoAmount,0,60,650)