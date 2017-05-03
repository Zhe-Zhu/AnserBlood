event_inherited();
draw_set_color(c_white)
draw_set_font(font_stat)

//头像
draw_sprite(sprChar1,0,10,620)

//子弹数量hud
draw_sprite(sprAmmoAmount,0,100,670)
draw_text_color(143,673,"X " + string(clipAmmo) + "/" + string(ammo),c_gray,c_gray,c_black,c_black,0.8);
draw_text(140,670,"X " + string(clipAmmo) + "/" + string(ammo));

//手雷数量hud
draw_sprite(sprGrenadeAmount,0,260,670)
draw_text_color(303,673,"X " + string(grenadeAmount),c_gray,c_gray,c_black,c_black,0.8);
draw_text(300,670,"X " + string(grenadeAmount));

//生命值
draw_rectangle_color(180,630,180 +180,630+20,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(180,630,180 +hp/hpMax *180,630+20,c_maroon,c_maroon,c_maroon,c_maroon,false);

draw_sprite(sprArmorHUD,0,120,620)
draw_text_color(183,623,string(hp),c_gray,c_gray,c_black,c_black,0.8);
draw_text(180,620, string(hp));






