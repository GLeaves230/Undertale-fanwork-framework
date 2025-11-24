if (is_draw){
	if (!is_hide){
		var the_alpha = draw_get_alpha();
		var the_font = draw_get_font();
		if (font != noone){
			draw_set_font(font);
			var the_color = draw_get_color();
			draw_set_alpha(char_alpha);
			draw_set_color(color);
			draw_text(x,y,char);
			draw_set_font(the_font);
			draw_set_color(the_color);
			draw_set_alpha(the_alpha);
		}
	}
}