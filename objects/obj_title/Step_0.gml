back_time+=1;

if (back_time>=900){
	room_goto(room_intro);
}
if (intronoise!=noone){
	if (!audio_is_playing(intronoise)){
		audio_stop_sound(intronoise);
		intronoise = noone;
		text = scr_create_text(0,0,"title",depth-1)
	}
}