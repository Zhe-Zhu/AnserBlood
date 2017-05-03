event_inherited();

if instance_exists(objPlayer)
{
if view_current == 0 and (inRoom = objPlayer.inRoom || inRoom = 0 ){draw_self();}
}
