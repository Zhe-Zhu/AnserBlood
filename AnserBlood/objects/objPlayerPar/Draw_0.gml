draw_set_font(font_stat_small);
if view_current == 0 {draw_sprite(sprArmor,0, x+32,y-25);}
if view_current == 0 {draw_text(x+40,y-36,string(armor));}

if view_current == playerNumber {draw_self();}
if view_current == playerNumber {draw_rectangle_color(x-20,y-30,x+20,y-20,c_black,c_black,c_black,c_black,false);}
if view_current == playerNumber {draw_rectangle_color(x-20,y-30,x-20 +hp/hpMax *40,y-20,c_maroon,c_maroon,c_maroon,c_maroon,false);}

