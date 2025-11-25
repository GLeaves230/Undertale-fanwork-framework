x1 = 100;
y1 = 140;

event_inherited();
text = scr_create_text(150,40,"menu1");
text2 = scr_create_text(150,40,"menu2");
name = noone;
var mus_path = "mus_menu";
mus_path+= "0";
mus_path+=".ogg"
if (file_exists(mus_path)){
	mus_menu = audio_create_stream(mus_path);

	mus_menu_id = audio_play_sound(mus_menu,10,true);
	audio_sound_gain(mus_menu_id,0.5);
}
else{
	mus_menu = noone;
	mus_menu_id = noone;
}