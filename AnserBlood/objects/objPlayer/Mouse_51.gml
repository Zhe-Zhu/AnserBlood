//把对象拉过来
if holding =0
{
	with collision_line(x,y,mouse_x,mouse_y,objInteractablePar,false,true) 
	{
		//需要isfalling来判断
		global.pulling = id;
		image_blend = make_colour_hsv(255, 192, 128);
		state = scr_pulled;
		
	}
	holding = 1;
}