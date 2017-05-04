event_inherited();

if instance_exists(objPlayer1)
{
if view_current == 0 and (inRoom = objPlayer1.inRoom || inRoom = 0 ){draw_self();}
}

if instance_exists(objPlayer3)
{
if view_current == 2 and (inRoom = objPlayer3.inRoom || inRoom = 0 ){draw_self();}
}

if instance_exists(objPlayer4)
{
if view_current == 3 and (inRoom = objPlayer4.inRoom || inRoom = 0 ){draw_self();}
}
