//显示下次安全区变化时间
draw_set_font(font_stat)
switch (safeZoneStatus)
{
case 1: draw_text(760,540,"Next Safe Zone Change:" + string(alarm[0]/60)); break;
case 0: draw_text(760,540,"Safe Zone Shrinking..." + string(alarm[1]/60)); break;
}