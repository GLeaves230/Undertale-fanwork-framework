global.Language = "en";

mus_story = audio_create_stream("mus_story.ogg");
mus_story_id = audio_play_sound(mus_story,10,true);
audio_sound_pitch(mus_story_id,0.9);
audio_sound_gain(mus_story_id,0.5);
name = "intro";
name+= string(intro_phase+1);
var u_string = scr_get_string(name);

text = scr_create_text(u_string.u_text,depth-1,u_string.u_font,u_string.u_delta,u_string.u_snd);
text.y = 320;
text.x = 100;
text2 = noone;