event_inherited();
if view_current == 0 and !place_meeting(x,y,objRoomCollision) {draw_self();}
if view_current == 1 {draw_self();}

if view_current == 0 and !place_meeting(x,y,objRoomCollision) {draw_rectangle_color(x-20,y-30,x+20,y-20,c_black,c_black,c_black,c_black,false);}
if view_current == 1 {draw_rectangle_color(x-20,y-30,x-20 +hp/hpMax *40,y-20,c_maroon,c_maroon,c_maroon,c_maroon,false);}
