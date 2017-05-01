event_inherited();

if instance_exists(objPlayer)
{
if view_current == 0 and (inRoom = objPlayer.inRoom || inRoom = 0 ){draw_self();}
//生命值
if view_current == 0 and inRoom = objPlayer.inRoom || inRoom = 0 {draw_rectangle_color(x-20,y-30,x+20,y-20,c_black,c_black,c_black,c_black,false);}
if view_current == 0 and inRoom = objPlayer.inRoom || inRoom = 0 {draw_rectangle_color(x-20,y-30,x-20 +hp/hpMax *40,y-20,c_maroon,c_maroon,c_maroon,c_maroon,false);}
}
