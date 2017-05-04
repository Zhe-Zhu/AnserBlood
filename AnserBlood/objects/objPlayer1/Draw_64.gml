event_inherited();
draw_set_color(c_white)
draw_set_font(font_stat)

//头像
draw_sprite(sprChar1,0,10,400)

//子弹数量hud
draw_sprite(sprAmmoAmount,0,100,480)
draw_text_color(143,483,"X " + string(clipAmmo) + "/" + string(ammo),c_gray,c_gray,c_black,c_black,0.8);
draw_text(140,480,"X " + string(clipAmmo) + "/" + string(ammo));

//手雷数量hud
//draw_sprite(sprGrenadeAmount,0,260,450)
//draw_text_color(303,453,"X " + string(grenadeAmount),c_gray,c_gray,c_black,c_black,0.8);
//draw_text(300,450,"X " + string(grenadeAmount));

//生命值
draw_rectangle_color(180,460,180 +150,460+20,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(180,460,180 +hp/hpMax *150,460+20,c_maroon,c_maroon,c_maroon,c_maroon,false);

draw_sprite(sprArmorHUD,0,120,440)
draw_text_color(183,443,string(hp),c_gray,c_gray,c_black,c_black,0.8);
draw_text(180,440, string(hp));

