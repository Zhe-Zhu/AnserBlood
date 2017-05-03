draw_set_font(font_stat_small);

if view_current == playerNumber {draw_self();}
draw_text(x,y,string(hasTarget));
draw_text(x,y+20,string(shootTargetX));
draw_text(x,y+40,string(shootTargetY));
draw_text(x,y+60,string(x));
draw_text(x,y+80,string(y));

//装子弹
if view_current == playerNumber and doing = 1
{
draw_rectangle_color(x-20,y+20,x-20 ,y+30,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(x-20,y+20,x-20 + progress/global.weaponArray[arm,13]*40 ,y+30,c_aqua,c_aqua,c_aqua,c_aqua,false)
}
