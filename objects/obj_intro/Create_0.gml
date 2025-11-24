mus_story = audio_create_stream("mus_story.ogg");
mus_story_id = audio_play_sound(mus_story,10,true);
audio_sound_pitch(mus_story_id,0.9);
audio_sound_gain(mus_story_id,0.5);
name = "intro";
name+= string(intro_phase+1);
text = scr_create_text(100,320,name,depth-1);
text2 = noone;