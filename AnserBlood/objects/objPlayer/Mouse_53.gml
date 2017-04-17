/// @description Insert description here
// You can write your code in this editor
if (state == st.normal)
{
state = st.attack;
image_index = 0;

//屏幕抖动
script_execute(scr_shake(14,25));
}


//Create Kill text
//script_execute(scr_killText);