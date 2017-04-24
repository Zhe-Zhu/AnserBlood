/// @description Insert description here
// You can write your code in this editor
if (sprite_index == sprPlayerAttack) 
{
sprite_index = sprPlayerWalk;
state = st.normal;
}

if (sprite_index == sprPlayerDead) 
{
image_index = image_number -1;
image_speed = 0;

}