var _xscale = view_wport[0] / sprite_width;
var _yscale = view_hport[0] / sprite_height;

draw_set_color(c_black);
draw_set_alpha(bg_opacity);
draw_rectangle(
	0, 0,
	view_wport[0], view_hport[0],
	false
);
draw_set_alpha(1);
draw_set_color(c_white);

draw_sprite_ext(
	sprite_index,
	0,
	0, (cos(elapsed / 5 * 2 * pi) + 1) / 2 * 10 - 5,
	_xscale,
	_yscale,
	0,
	c_white,
	title_opacity
);

draw_sprite_ext(
	spr_title_bottom,
	0,
	0, 0,
	_xscale,
	_yscale,
	0,
	c_white,
	(cos(subtitle_elapsed / 2.5 * 2 * pi) + 1) / 2 * title_opacity
);