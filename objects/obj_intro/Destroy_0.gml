if (mus_story!=noone){
	audio_destroy_stream(mus_story);
	mus_story = noone;
}
if (mus_story_id!=noone){
	audio_stop_sound(mus_story_id);
	mus_story_id = noone;
}
if (text2!=noone){
	instance_destroy(text2);
	text2 = noone;
}
if (text!=noone){
	instance_destroy(text);
	text = noone;
}