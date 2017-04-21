//把对象拉过来
if holding =0
{
	with collision_line(x,y,mouse_x,mouse_y,objInteractablePar,false,true)
	{
	global.pulling = id;
	state = scr_pulled;
	}
	holding = 1;
}