event_inherited();

draw_set_color(c_white)
draw_set_font(font_stat)

//头像
draw_sprite(sprChar2,0,10+960,620)


//子弹数量hud
draw_sprite(sprAmmoAmount,0,100+960,670);
draw_text(140+960,670,"X " + string(clipAmmo) +"/" + string(ammo));


//手雷数量hud
draw_sprite(sprGrenadeAmount,0,260+960,670)
draw_text(300+960,670,"X " + string(grenadeAmount));
