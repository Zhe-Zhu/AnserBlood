//====Hitbox
image_speed = 1;

if (image_index >= 4 && image_index <=5 )
 	{
 		with(instance_create_depth(x,y,0,objHitbox))
 		{
 			image_xscale = other.image_xscale;
			image_angle = other.image_angle;
			//vspeed = other.vspeed;
			//hspeed = other.hspeed;
 		}
 	}