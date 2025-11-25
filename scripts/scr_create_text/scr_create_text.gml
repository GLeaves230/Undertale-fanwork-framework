function scr_create_text(x=0,y=0,u_text = "",depth=0,change_string = "")
{
	u_string = scr_get_string(u_text,change_string);
	u_text = instance_create_depth(0,0,depth-1,obj_text);
	length = string_length(u_string.u_text);
	for (i=0;i<length;i++){
		ds_list_add(u_text.text,scr_create_char(string_char_at(u_string.u_text,i+1),depth,u_string.u_font));
	}
	u_text.the_pos_max = length;
	u_text.u_string = u_string;
	if (u_string.u_is_skip){
		scr_skip_string(u_text);
	}
	u_text.x = x;
	u_text.y = y;
	return u_text;
}