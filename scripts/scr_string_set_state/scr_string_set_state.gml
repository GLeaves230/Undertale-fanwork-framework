function scr_string_set_state(text,is_update = true,is_draw = true){
	if (text!=noone){
		text.is_update = is_update;
		text.is_draw = is_update;
	}	
}