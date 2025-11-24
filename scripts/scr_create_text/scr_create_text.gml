function scr_create_text(text,depth,font = noone,delta_Time = 0,snd_name = "")
{
	
	if (text==""){
		return noone;
	}
	else{
		
		u_text = instance_create_depth(0,0,depth-1,obj_text);
		length = string_length(text);
		for (i=0;i<length;i++){
			ds_list_add(u_text.text,scr_create_char(string_char_at(text,i+1),depth,font));
		}
		u_text.the_pos_max = length;
		u_text.delta_Time = delta_Time;
		u_text.snd_name = snd_name;
		return u_text;
	}
}