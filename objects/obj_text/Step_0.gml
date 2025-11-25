for (i = 0;i<ds_list_size(text);i++){
	var char = ds_list_find_value(text,i);
	char.is_draw = is_draw;
	char.is_update = is_update;
	char.colour = u_string.u_col;
	char.motion_state = u_string.motion_state;
}

if (is_update){
	var Line = 0;
	var Row = 0;

	the_delta++;
	if (the_delta>u_string.u_delta){
		the_delta = 0;
		the_pos++;
		if (the_pos>ds_list_size(text)){
			the_pos = ds_list_size(text)
		}
		else{
			var char = ds_list_find_value(text,the_pos-1);
			var char_int = ord(char.char);
			var the_snd = scr_get_txtsnd(u_string.u_snd)
			if (char_int>=48&&char_int<=57||
				char_int>=97&&char_int<=122||
				char_int>=65&&char_int<=90||
				char_int>=256||char.char=="."){
				if (the_snd!=noone){
					var snd_id =  audio_play_sound(the_snd,2,false);
					audio_sound_gain(snd_id,0.25);
					audio_sound_pitch(snd_id,1);
				}
			}
		}
	}
	var pos_x = 0;
	var pos_y = 0;
	for (i = 0;i<the_pos;i++){
		var char = ds_list_find_value(text,i);
		if (char.char == "\v"){
			pos_x+=u_string.char_x1_offset;
		}
		else if (char.char != "\r"){
			Line++;
		}
		if (char.char=="\n"){
			Line = 0;
			Row++;
		}
		else{
			char.x = Line * (font_get_size(char.font)+u_string.char_x_offset)+x+pos_x;
			char.y = Row * (font_get_size(char.font)+20+u_string.char_y_offset)+y+pos_y;
			if (char.is_hide){
				char.is_hide = false;
			}
		}
	}
}
	