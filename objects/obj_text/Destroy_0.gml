for (i = 0;i<ds_list_size(text);i++){
	var char = ds_list_find_value(text,i);
	instance_destroy(char);
}
ds_list_destroy(text);
text = noone;