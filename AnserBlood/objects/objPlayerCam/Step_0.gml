if instance_exists(belongsTo)
{

x += (belongsTo.cursor.x - x) /15 ;
y += (belongsTo.cursor.y - y) /15 ;

camera_set_view_pos(view_camera[belongsTo.playerNumber],x -400 + shake1,y -225 + shake1);

/*
var viewx = camera_get_view_x(view_camera[belongsTo.playerNumber])
var viewy = camera_get_view_y(view_camera[belongsTo.playerNumber])
var vieww = camera_get_view_width(view_camera[belongsTo.playerNumber])
var viewh = camera_get_view_height(view_camera[belongsTo.playerNumber])

//把视野外的内容停掉
instance_deactivate_region(viewx,viewy,vieww,viewh,false,true);
*/


shake1 *= decay;

}
else
{
instance_destroy()
}