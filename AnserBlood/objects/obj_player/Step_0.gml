///Read Controls and set movement direction.
if(!is_pushed)
{
    //Walkin' around.
    movement_direction=player_read_controls();
    if(movement_direction != -1)
    {   //We are moving, so set move_speed.
        if(friction_enabled)
            move_speed=min(walk_speed,move_speed+walk_acceleration);
        else
            move_speed=walk_speed;
    }
    else
    {   //Stop movement, round position.
        move_speed=0;
        x=round(x);
        y=round(y);
    }
}
else
{   ///Pushed
    movement_direction=push_direction;
    move_speed=max(0,move_speed-push_slowdown);
    if(move_speed<=0)
    {
        is_pushed=false;
    }
}


///Movement and Collision
if(movement_and_collision(movement_direction,move_speed,obj_wall_base))
{
    against_wall++;
    if(friction_enabled)
        move_speed=0;
}
else
    against_wall=false;

///Inc Timer
timer++;

///Change Movement
if(mouse_wheel_up())
    walk_speed+=.25;
if(mouse_wheel_down())
    walk_speed=max(walk_speed-.25,1);
if(!is_pushed && mouse_check_button_pressed(mb_left))
{
    is_pushed=true;
    push_direction=point_direction(mouse_x,mouse_y,x,y);
    move_speed=push_speed;
}    
if(mouse_check_button_pressed(mb_right))
    friction_enabled=!friction_enabled;

