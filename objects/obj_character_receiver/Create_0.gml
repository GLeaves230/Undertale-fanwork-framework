select_x1 = ds_list_create();
select_y1 = ds_list_create();
ds_list_add(select_x1,0);
ds_list_add(select_y1,0);
ds_list_add(select_x1,0);
ds_list_add(select_y1,0);

select_x2 = ds_list_create();
select_y2 = ds_list_create();
ds_list_add(select_x2,6);
ds_list_add(select_y2,8);
ds_list_add(select_x2,1);
ds_list_add(select_y2,0);

char_list =  ds_list_create();
var char_id = 0;
var is_lower = false;
var u_char_option = noone;
var list = noone;
ds_list_add(char_list,ds_list_create());
list = ds_list_find_value(char_list,0);

for (i = 0;i<8;i++){
	ds_list_add(list,ds_list_create());
	var line = 7;
	if (i==4){
		char_id+=6;
		is_lower = true;
	}
	else if (i==3||i==7){
		line = 5
	}
	for (j=0;j<line;j++){
		var char = "";
		char = ansi_char(65+char_id+j)
		u_char_option = scr_create_char_option(char,depth-1,DeterminationMono22,CHAR_MOTION_STATE.JITTER);
		ds_list_add(ds_list_find_value(list,i),u_char_option);
		u_char_option.x = x1+j*(font_get_size(u_char_option.font)+50)
		u_char_option.y = y1+i*(font_get_size(u_char_option.font)+10);
		if (is_lower){
			u_char_option.y+=20;
		}
	}
	char_id+=line;
}
var u_string;
u_string = scr_get_string("Quit");
ds_list_add(list,ds_list_create()); 
u_char_option = scr_create_char_option(u_string.u_text,depth-1,u_string.u_font,u_string.motion_state);
u_char_option.x = x1+0;
u_char_option.y = y1+300;
ds_list_add(ds_list_find_value(list,8),u_char_option);

u_string = scr_get_string("Backspace");
ds_list_add(list,ds_list_create()); 
u_char_option = scr_create_char_option(u_string.u_text,depth-1,u_string.u_font,u_string.motion_state);
u_char_option.x = x1+130;
u_char_option.y = y1+300;
ds_list_add(ds_list_find_value(list,8),u_char_option);

u_string = scr_get_string("Done");
ds_list_add(list,ds_list_create()); 
u_char_option = scr_create_char_option(u_string.u_text,depth-1,u_string.u_font,u_string.motion_state);
u_char_option.x = x1+360;
u_char_option.y = y1+300;
ds_list_add(ds_list_find_value(list,8),u_char_option);

ds_list_add(char_list,ds_list_create());
list = ds_list_find_value(char_list,1);

u_string = scr_get_string("No");
ds_list_add(list,ds_list_create()); 
u_char_option = scr_create_char_option(u_string.u_text,depth-1,u_string.u_font,u_string.motion_state);
u_char_option.x = x1+130;
u_char_option.y = y1+300;
ds_list_add(ds_list_find_value(list,0),u_char_option);

u_string = scr_get_string("Yes");
ds_list_add(list,ds_list_create()); 
u_char_option = scr_create_char_option(u_string.u_text,depth-1,u_string.u_font,u_string.motion_state);
u_char_option.x = x1+360;
u_char_option.y = y1+300;
ds_list_add(ds_list_find_value(list,0),u_char_option);
