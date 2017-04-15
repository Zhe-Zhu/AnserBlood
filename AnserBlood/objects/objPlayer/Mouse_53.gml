/// @description Insert description here
// You can write your code in this editor
sprite_index = sprPlayerAttack;

//屏幕抖动
script_execute(scr_shake(14,25));

//Create Kill text
instance_create_depth(x,y-20,-3,objKillText1);