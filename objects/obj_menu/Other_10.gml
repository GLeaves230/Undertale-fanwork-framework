// Inherit the parent event
switch (select_page){
	case 1:
		if (receive_event_name=="No"){
			select_page = 0;
			if (name!=noone){
				instance_destroy(name)
				name = noone;
			}
		}
	default:
		if (receive_event_name=="Done"){
			if (receive_text!=""){
				select_page = 1;
				name = scr_create_char(receive_text,depth,DeterminationMono22,CHAR_MOTION_STATE.GRADUALLY_GROW_LARGER);
				name.is_hide = false;
				name.x = 270;
				name.y = 90;
			}
		}
		else if (receive_event_name=="Quit"){
	
		}
		break;
}
event_inherited();

