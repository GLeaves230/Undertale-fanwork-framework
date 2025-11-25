if (keyboard_check_pressed(vk_backspace)||keyboard_check_pressed(ord("X"))){
	if (select_page==0){
		if (receive_text!=""){
			receive_text = string_delete(receive_text,string_byte_length(receive_text),1);
		}
	}
}
