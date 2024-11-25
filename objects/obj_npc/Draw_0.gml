draw_set_color(c_white);
draw_set_alpha(1);
draw_self();
if meeting {
	draw_set_font(fnt_tooltip);
	draw_text(x + tooltip_x + abs(sprite_width) / 2, y + tooltip_y, "E");
}