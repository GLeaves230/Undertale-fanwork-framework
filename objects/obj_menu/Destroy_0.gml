// Inherit the parent event
event_inherited();
if (text!=noone){
	instance_destroy(text);
	text = noone;
}
if (text2!=noone){
	instance_destroy(text2);
	text2 = noone;
}
if (name!=noone){
	instance_destroy(name);
	name = noone;
}
if (mus_menu!=noone){
	audio_destroy_stream(mus_menu);
	mus_menu = noone;
}
if (mus_menu_id!=noone){
	audio_stop_sound(mus_menu_id);
	mus_menu_id = noone;
}
