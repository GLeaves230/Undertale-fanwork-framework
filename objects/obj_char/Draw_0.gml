if (is_draw){
	if (!is_hide){
		var the_alpha = draw_get_alpha();
		var the_font = draw_get_font();
		if (font != noone){
			draw_set_font(font);
			var the_colour = draw_get_color();
			draw_set_alpha(char_alpha);
			draw_set_colour(colour);
			switch (motion_state){
				case CHAR_MOTION_STATE.GRADUALLY_GROW_LARGER:
					draw_text_transformed(x+x1-gradually_grow_larger_time/1.25,y+y1+gradually_grow_larger_time,char,1+gradually_grow_larger_time/80,1+gradually_grow_larger_time/80,random_range(-(gradually_grow_larger_time/180),gradually_grow_larger_time/180));
					break;
				default:
					draw_text(x+x1,y+y1,char);
					break;
			}
			
			draw_set_font(the_font);
			draw_set_colour(the_colour);
			draw_set_alpha(the_alpha);
		}
	}
}