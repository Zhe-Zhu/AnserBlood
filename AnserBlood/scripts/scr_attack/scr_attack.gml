//====Hitbox
if (image_index >= 2 && image_index <=3 )
 	{
 		with(instance_create_depth(x,y,0,objHitbox))
 		{
 			image_xscale = other.image_xscale;
			image_angle = other.image_angle;
			//vspeed = other.vspeed;
			//hspeed = other.hspeed;
 		}
 	}