
if (keyboard_check_pressed(13)||keyboard_check_pressed(ord("Z"))){
	if (!intro_is_end){
		if (intro_phase<10){
		
			intro_time = intro_end_time-75;
		}
		else{
		
			intro_time = intro_end_time-150;
		}
		intro_is_end = true;
		if (text!=noone){
			instance_destroy(text);
			text = noone;
		}
		if (text2!=noone){
			instance_destroy(text2);
			text2 = noone;
		}
	}
}