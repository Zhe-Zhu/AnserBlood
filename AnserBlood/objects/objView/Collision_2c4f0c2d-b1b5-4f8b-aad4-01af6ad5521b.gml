if instance_exists(belongsTo)
{

	if !collision_line(x,y,objPlayerPar.x,objPlayerPar.y,objBarrierPar,true,true) 
	and instance_place(x,y,objPlayerPar)
	and (belongsTo.inRoom = objPlayerPar.inRoom || objPlayerPar.inRoom=0)
		{
			belongsTo.hasTarget = true;
			belongsTo.targeting = other.id;	
			belongsTo.shootTargetX = other.x;
			belongsTo.shootTargetY = other.y;
		}	
		
}