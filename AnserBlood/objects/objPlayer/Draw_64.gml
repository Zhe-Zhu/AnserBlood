event_inherited();
draw_set_color(c_white)
draw_set_font(font_stat)

//头像
draw_sprite(sprChar1,0,10,620)

//子弹数量hud
draw_sprite(sprAmmoAmount,0,100,670)
draw_text(140,670,"X " + string(clipAmmo) + "/" + string(ammo));

//手雷数量hud
draw_sprite(sprGrenadeAmount,0,260,670)
draw_text(300,670,"X " + string(grenadeAmount));
