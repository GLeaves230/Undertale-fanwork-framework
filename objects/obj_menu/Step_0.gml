// Inherit the parent event
switch (select_page){
	case 1:
		if (text!=noone){
			text.is_draw = false;
		}
		if (text2!=noone){
			text2.is_draw = true;
		}
		break;
	default:
		if (text2!=noone){
			text2.is_draw = false;
		}
		if (text!=noone){
			text.is_draw = true;
		}
		break;
}
event_inherited();

