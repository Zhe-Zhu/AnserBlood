draw_set_font(font_stat_small);
if view_current == playerNumber {draw_sprite(sprArmor,0, x+32,y-25);}
if view_current == playerNumber {draw_text(x+40,y-36,string(armor));}

if view_current == playerNumber {draw_self();}
if view_current == playerNumber {draw_rectangle_color(x-20,y-30,x+20,y-20,c_black,c_black,c_black,c_black,false);}
if view_current == playerNumber {draw_rectangle_color(x-20,y-30,x-20 +hp/hpMax *40,y-20,c_maroon,c_maroon,c_maroon,c_maroon,false);}

if view_current == playerNumber and doing = 1
{
draw_rectangle_color(x-20,y+10,x-20 ,y+20,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(x-20,y+10,x-20 + progress/global.weaponArray[arm,13]*40 ,y+20,c_aqua,c_aqua,c_aqua,c_aqua,false)
}
