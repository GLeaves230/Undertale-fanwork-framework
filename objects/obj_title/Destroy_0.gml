if (intronoise!=noone){
	audio_stop_sound(intronoise);
	intronoise = noone;
}
if (text!=noone){
	instance_destroy(text);
}