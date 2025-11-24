function scr_create_char(char,depth,font = noone)
{
	
	if (char==""){
		return noone;
	}
	else{
		u_char = instance_create_depth(0,0,depth,obj_char);
		u_char.char = char;
		u_char.font = font;
		return u_char;
	}
}