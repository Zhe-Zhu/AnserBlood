/// @description Insert description here
// You can write your code in this editor
if (state == st.normal)
{
state = st.attack;
image_index = 0;

//屏幕抖动
objGame.shaking =1;
objGame.shake += random_range(7,10);
objGame.zoom_level = 0.85;
}

