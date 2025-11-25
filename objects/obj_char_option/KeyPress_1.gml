event_inherited();
if (keyboard_check_pressed(vk_enter)||keyboard_check_pressed(ord("Z"))){
	
	if (char!=""&&parther!=noone&&is_selected&&!is_hide){
		if (char == scr_get_string("Quit").u_text){
			parther.receive_event_name = "Quit";
			with(parther){
				event_user(0);
			}
		}
		else if (char == scr_get_string("Backspace").u_text){
			parther.receive_event_name = "Backspace";
			with(parther){
				event_user(0);
			}
		}
		else if (char == scr_get_string("Done").u_text){
			parther.receive_event_name = "Done";
			with(parther){
				event_user(0);
			}
		}
		else if (char == scr_get_string("Yes").u_text){
			parther.receive_event_name = "Yes";
			with(parther){
				event_user(0);
			}
		}
		else if (char == scr_get_string("No").u_text){
			parther.receive_event_name = "No";
			with(parther){
				event_user(0);
			}
		}
		else{
			if (string_length(parther.receive_text)<parther.receive_size_max){
				parther.receive_text+=char;
			}
		}
	}
	
}


