/// scr_move(device)
var device = argument0;

// get_gamepad_input
xaxis = gamepad_axis_value(device, gp_axislh);
yaxis = gamepad_axis_value(device, gp_axislv);
magnitude = point_distance(0, 0, xaxis, yaxis);
if (magnitude > 1) magnitude = 1;

threshold = .2;

//Walkin' around.
    if (magnitude >= threshold) 
	{
	moveDirection = point_direction(0,0,xaxis,yaxis);	
	}	
	else
	{
    moveDirection = -1;
	}
	
    if(moveDirection != -1)
    {   //We are moving, so set move_speed.
        if(frictionEnabled)
            moveSpeed = min(walkSpeed, moveSpeed + walkAcceleration);
        else
            moveSpeed = walkSpeed;
    }
    else
    {   //Stop movement, round position.
        moveSpeed=0;
        x=round(x);
        y=round(y);
    }


///Movement and Collision
if(movement_and_collision(moveDirection,moveSpeed,objBarrierPar))
{
    againstWall++;
    if(frictionEnabled)
        moveSpeed=0;
}
else
    againstWall=false;
