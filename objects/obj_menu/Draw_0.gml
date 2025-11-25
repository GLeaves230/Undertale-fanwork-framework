var font = draw_get_font();
var colour = draw_get_colour();
draw_set_colour(receive_colour);
draw_set_font(receive_font);

if (select_page==0){
	draw_text(270,90,receive_text);
}
draw_set_colour(colour);
draw_set_font(font);

event_inherited();