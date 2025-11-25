function scr_create_char_option(char,depth=0,font = DeterminationMono18,motion_state = CHAR_MOTION_STATE.NORMAL,parther = id)
{
	
	if (char==""){
		return noone;
	}
	else{
		u_char = instance_create_depth(0,0,depth,obj_char_option);
		u_char.char = char;
		u_char.font = font;
		u_char.parther = parther;
		u_char.motion_state = motion_state;
		return u_char;
	}
}