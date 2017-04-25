//把对象拉过来
if holding =0
{
	with collision_line(x,y,mouse_x,mouse_y,objInteractablePar,false,true) 
	{
		 global.pulling = id;
		//需要isfalling来判断
		isPulled = 1;
		
	}
	holding = 1;
}