function scr_string_is_end(text){
	if (text!=noone){
		return text.the_pos == text.the_pos_max;
	}
	return true;
}