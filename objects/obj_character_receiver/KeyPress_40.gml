if (!is_selected){
	is_selected =true;
}
else{
	var the_x1 = ds_list_find_value(select_x1,select_page);
	var the_x2 = ds_list_find_value(select_x2,select_page);
	var the_y1 = ds_list_find_value(select_y1,select_page);
	var the_y2 = ds_list_find_value(select_y2,select_page);
	
	the_y1++;
	/*
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
	*/
	if (the_x1 > the_x2){
		the_x1 = the_x2;
	}
	if (the_x1 < 0){
		the_x1 = 0;
	}
	if (the_y1 > the_y2){
		the_y1 = the_y2;
	}
	if (the_y1 < 0){
		the_y1 = 0;
	}
	ds_list_set(select_x1,select_page,the_x1);
	ds_list_set(select_y1,select_page,the_y1);
}