if paused {
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	
	show_debug_message(view_wport[0]);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_font(fnt_options);
	draw_set_color(c_white);
	if !hide_pause_text {
		draw_text(view_wport[0] / 2 - 10, view_hport[0] / 2 - 20, "RESTART");
		draw_text(view_wport[0] / 2 - 10, view_hport[0] / 2 + 20, "EXIT");
	}
	draw_set_alpha(1);
}