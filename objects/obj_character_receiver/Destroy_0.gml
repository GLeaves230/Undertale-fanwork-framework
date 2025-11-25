if (select_x1!=noone){
	ds_list_destroy(select_x1);
	select_x1 = noone;
}
if (select_y1!=noone){
	ds_list_destroy(select_y1);
	select_y1 = noone;
}
if (select_x2!=noone){
	ds_list_destroy(select_x2);
	select_x2 = noone;
}
if (select_y2!=noone){
	ds_list_destroy(select_y2);
	select_y2 = noone;
}

if (char_list!=noone){
	var list_size = ds_list_size(char_list);
	for (i = 0;i<list_size;i++){
		var list1 = ds_list_find_value(char_list,i);
		if (list1!=noone){
			var list1_size = ds_list_size(list1);
			for (i = 0;i<list1_size;i++){
				var list2 = ds_list_find_value(list1,i);
		
				if (list2!=noone){
					ds_list_destroy(list2);
				}
				ds_list_set(list1,i,noone);
			}
			
			ds_list_destroy(list1);
			ds_list_set(char_list,i,noone);
		}
	}
	ds_list_destroy(char_list);
	char_list = noone;
}