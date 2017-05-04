//显示下次安全区变化时间
draw_set_font(font_stat_small)
switch (safeZoneStatus)
{
case 1: draw_text(860,40,"Next Safe Zone Change:" + string(alarm[0]/60)); break;
case 0: draw_text(860,40,"Safe Zone Shrinking..." + string(alarm[1]/60)); break;
}

draw_line(0,540,1920,540);
draw_line(960,0,960,1080);