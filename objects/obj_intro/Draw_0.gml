var alpha = draw_get_alpha();

if (intro_alpha>1){
	intro_alpha = 1
}
else if (intro_alpha<0){
	intro_alpha = 0;
}

if (intro_phase<10){
	if (intro_time>=intro_end_time-75){
		intro_alpha-=0.025;
	}
}
else{
	if (intro_time>=intro_end_time-75*10){
		intro_alpha-=0.025/10;
	}
}

if (intro_phase>0&&intro_time<=75){
	intro_alpha+=0.025;
}

if (intro_is_end&& text!=noone){
	text.char_alpha = intro_alpha;
}

draw_set_alpha(intro_alpha)
if (intro_phase<10){
	draw_sprite(spr_introimage,intro_phase,0,0);
	draw_set_alpha(alpha)
}
else if (intro_phase==10){
	var camera_y = camera_get_view_y(view_camera[0]);
	draw_sprite(spr_introlast,0,0,-400);
	draw_set_alpha(alpha)
	draw_set_colour(c_black);
	draw_rectangle(0,0+camera_y,640,50+camera_y,false);
	draw_rectangle(0,270+camera_y,640,480+camera_y,false);
	
}

