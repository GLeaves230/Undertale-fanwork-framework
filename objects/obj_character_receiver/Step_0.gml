if (is_selected&&char_list!=noone){
	var the_x1 = ds_list_find_value(select_x1,select_page);
	var the_y1 = ds_list_find_value(select_y1,select_page);
	var the_x2 = ds_list_find_value(select_x2,select_page);
	var the_y2 = ds_list_find_value(select_y2,select_page);
	switch (select_page){
		case 1:
			break;
		default:
			if (the_y1==3||the_y1==7){
				the_x2 = 4;
			}
			else if (the_y1==8){
				the_x2 = 2;
			}
			break;
	}
	
	if (the_x1 > the_x2){
		the_x1 = the_x2;
	}
	if (the_y1 > the_y2){
		the_y1 = the_y2;
	}
	if (the_x1 < 0){
		the_x1 = 0;
	}
	if (the_y1 < 0){
		the_y1 = 0;
	}
	
	for (i = 0;i<ds_list_size(char_list);i++){
		var list1 = ds_list_find_value(char_list,i);
		if (list1!=noone){
			for (k = 0;k<ds_list_size(list1);k++){
				var list2 = ds_list_find_value(list1,k);
				if (list2!=noone){
					for (j = 0;j<ds_list_size(list2);j++){
						var u_char_option = ds_list_find_value(list2,j);
						if (u_char_option!=noone){
							if (j==the_x1&&k==the_y1){
								u_char_option.is_selected=true;
							}
							else{
								u_char_option.is_selected=false;
							}
							if (select_page==i){
								u_char_option.is_hide = false;
							}
							else{
								u_char_option.is_hide = true;
							}
						}
					}
				}
			}
		}
	}
}