
intro_time+=1;
if (intro_phase<10){
	
}
else if (intro_phase==10){
	if (intro_time>150){
		var camera_y = camera_get_view_y(view_camera[0]);
		camera_y-=1;
		if (camera_y <= -340){
			camera_y = -340;
		}
		camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),camera_y)
	}
}

if (intro_time>=intro_end_time){
	switch(intro_phase){
		case 5:
			if (text2!=noone){
				instance_destroy(text2);
				text2 = noone;
			}
		default:
			if (text!=noone){
				instance_destroy(text);
				text = noone;
			}
			break;
	}
	if (!intro_is_end){
		if (intro_phase<10){
			intro_time = 0;
			intro_phase+=1;
			var u_string = scr_get_string("");
			switch(intro_phase){
				case 1:
				case 2:
				case 3:
				case 4:
				case 6:
					name = "intro";
					name+= string(intro_phase+1);
					text = scr_create_text(100,320,name,depth-1);
					break;
				case 10:
					intro_end_time = 1680;
					break;
				case 5:
					text = scr_create_text(200,330,"intro6_1",depth-1);
					text2 = scr_create_text(260,370,"intro6_2",depth-1);
					scr_string_set_state(text2,false,false);
					break;
				default:
					break;
			}
		}
		else{
			intro_is_end = true;
		
		}
	}
}

switch(intro_phase){
	case 5:
		if (scr_string_is_end(text)&&intro_time>80){
			scr_string_set_state(text2,true,true);
		}
		break;
	default:
		break;
}

if (intro_is_end){
	if (mus_story_id){
		var mus_story_gain = audio_sound_get_gain(mus_story_id);
		mus_story_gain-=0.005;
		if (mus_story_gain<=0){
			mus_story_gain = 0;
			audio_stop_sound(mus_story_id);
			room_goto(room_title);
			
		}
		audio_sound_gain(mus_story_id,mus_story_gain)
	}
}