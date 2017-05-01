event_inherited();

draw_set_color(c_white)
draw_set_font(font_stat)

draw_text(100+960,650,"X " + string(clipAmmo) +"/" + string(ammo));
draw_sprite(sprAmmoAmount,0,60+960,650);

//手雷数量hud
draw_text(260+960,650,"X " + string(grenadeAmount));
draw_sprite(sprGrenadeAmount,0,220+960,650)