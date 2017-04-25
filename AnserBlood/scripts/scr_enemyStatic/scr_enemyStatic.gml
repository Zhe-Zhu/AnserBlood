 sprite_index = normalSprite;

//敌人判断角色位置
var dis = point_distance(x,y,objPlayer.x,objPlayer.y);
var dir = point_direction(x,y,objPlayer.x,objPlayer.y);

//敌人的视野范围

if (dis <= aggroRange)
{
    state = scr_enemyFollow;
}
else
{
    if alarm[0] = -1
        alarm[0] = 2*room_speed;
}
