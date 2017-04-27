draw_self();
draw_set_color(c_black);

//生命值
draw_rectangle_color(x,y-30,x+30,y-10,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(x,y-30,x+ hp/hpMax *50,y-10,c_aqua,c_aqua,c_aqua,c_aqua,false)