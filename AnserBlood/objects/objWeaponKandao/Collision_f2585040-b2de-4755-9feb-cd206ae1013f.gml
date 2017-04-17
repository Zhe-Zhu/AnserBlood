
if (other.state != st.dead) and throwing = 1
{
script_execute(scr_killText);


other.sprite_index = sprEnemyDead;
other.image_index = 0;
other.state = st.dead;

instance_destroy();
}

