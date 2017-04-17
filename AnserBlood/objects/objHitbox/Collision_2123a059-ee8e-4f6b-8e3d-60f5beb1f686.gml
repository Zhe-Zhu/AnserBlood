/// @description Insert description here
// You can write your code in this editor

if (other.state != st.dead)
{
script_execute(scr_killText);



other.sprite_index = sprEnemyDead;
other.image_index = 0;
other.state = st.dead;
}

