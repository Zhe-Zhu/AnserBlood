/// @description Insert description here
// You can write your code in this editor
if (state == st.normal) state = st.attack;
else exit;

//====Animate
sprite_index = sprPlayerAttack;
image_index = 0; //每次不一定都从第一帧开始播放