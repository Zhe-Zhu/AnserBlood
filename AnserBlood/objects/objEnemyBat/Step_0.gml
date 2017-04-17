




switch(state)
{
	case st.normal:
	{
		script_execute(scr_animate);//当角色不移动的时候，不播放动画
		script_execute(scr_move);
		mp_potential_step_object(objPlayer.x,objPlayer.y,PatrolSpeed,all);
		break;
	}
	
	case st.attack:
	{
		script_execute(scr_attack);
		script_execute(scr_move);
		break;
	}

	case st.dead:
	{
		break;
	}
}