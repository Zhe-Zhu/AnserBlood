
//enemy state
script_execute(state);

//enemy dead


//collisions
if hspeed!= 0
{if!place_free(x+hspeed,y)
    {
    if hspeed > 0 {move_contact_solid(0,hspeed)}; //向右
    if hspeed < 0 {move_contact_solid(180,-hspeed)}; //向左
    hspeed = 0;
    }
}

if vspeed!= 0
{if!place_free(x,y+vspeed)
    {
    if vspeed > 0 {move_contact_solid(270,vspeed)}; //向右
    if vspeed < 0 {move_contact_solid(90,-vspeed)}; //向左
    vspeed = 0;
    }
}

