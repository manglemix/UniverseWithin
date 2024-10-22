if paused {
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, view_wport[view_current], view_hport[view_current], false);
	draw_set_font(fnt_options);
	draw_set_color(c_white);
	draw_text(view_wport[view_current] / 2 - 10, view_hport[view_current] / 2 - 20, "RESTART");
	draw_text(view_wport[view_current] / 2 - 10, view_hport[view_current] / 2 + 20, "EXIT");
	draw_set_alpha(1);
}