event_inherited();

if instance_exists(objPlayer2)
{
if view_current == 1 and (inRoom = objPlayer2.inRoom || inRoom = 0 )and !collision_line(x,y,objPlayer2.x,objPlayer2.y,objBarrierPar,true,true){draw_self();}
}

if instance_exists(objPlayer1)
{
if view_current == 0 and (inRoom = objPlayer1.inRoom || inRoom = 0 )and !collision_line(x,y,objPlayer1.x,objPlayer1.y,objBarrierPar,true,true){draw_self();}
}

if instance_exists(objPlayer3)
{
if view_current == 2 and (inRoom = objPlayer3.inRoom || inRoom = 0 )and !collision_line(x,y,objPlayer3.x,objPlayer3.y,objBarrierPar,true,true){draw_self();}
}

