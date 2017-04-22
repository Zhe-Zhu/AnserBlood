/// @description Insert description here
// You can write your code in this editor

if (other.state != st.dead)
{
//script_execute(scr_killText);

other.sprite_index = sprEnemyDead;
other.image_index = 0;

other.image_angle = point_direction(x,y,other.x,other.y);
other.state = st.dead;

with instance_create_depth(other.x,other.y,-1,objBloodSmoke1)
{
image_xscale = random_range(2,3);
image_yscale = random_range(2,3);
image_angle = point_direction(x,y,other.x,other.y);
}
}

