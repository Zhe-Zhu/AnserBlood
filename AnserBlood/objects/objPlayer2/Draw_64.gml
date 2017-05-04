
event_inherited();
draw_set_color(c_white)
draw_set_font(font_stat)

//头像
draw_sprite(sprChar2,0,10+960,400)

//子弹数量hud
draw_sprite(sprAmmoAmount,0,100+960,480)
draw_text_color(143+960,483,"X " + string(clipAmmo) + "/" + string(ammo),c_gray,c_gray,c_black,c_black,0.8);
draw_text(140+960,480,"X " + string(clipAmmo) + "/" + string(ammo));

//手雷数量hud
//draw_sprite(sprGrenadeAmount,0,260,450)
//draw_text_color(303+960,453,"X " + string(grenadeAmount),c_gray,c_gray,c_black,c_black,0.8);
//draw_text(300+960,450,"X " + string(grenadeAmount));

//生命值
draw_rectangle_color(180+960,460,180+960 +150,460+20,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(180+960,460,180+960 +hp/hpMax *150,460+20,c_maroon,c_maroon,c_maroon,c_maroon,false);

draw_sprite(sprArmorHUD,0,120+960,440)
draw_text_color(183+960,443,string(hp),c_gray,c_gray,c_black,c_black,0.8);
draw_text(180+960,440, string(hp));
