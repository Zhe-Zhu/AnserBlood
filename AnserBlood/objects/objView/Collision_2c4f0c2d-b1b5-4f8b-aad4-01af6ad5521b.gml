if instance_exists(belongsTo)
{
	if other.id != belongsTo.id
	{
	if !collision_line(x,y,other.x,other.y,objBarrierPar,true,true) 
	and instance_place(x,y,other)
	and (belongsTo.inRoom = other.inRoom || other.inRoom=0)
		{
			belongsTo.hasTarget = true;
			belongsTo.targeting = other.id;	
			belongsTo.shootTargetX = other.x;
			belongsTo.shootTargetY = other.y;
		}	
		
	}
	else 
	{
			belongsTo.hasTarget = false;
	}	
}