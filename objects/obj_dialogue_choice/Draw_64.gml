draw_set_color(c_white);
draw_set_alpha(opacity);
draw_self();
var _tmp = draw_get_color();
if special {
	draw_set_color(c_aqua);
	draw_set_font(fnt_dialogue_special_choice);
} else {
	draw_set_font(fnt_dialogue_choice);
}

draw_text_transformed(x + 7 * parent_x_scale, y + 5 * image_yscale, choice, parent_x_scale, image_yscale, 0);
draw_set_color(_tmp);
draw_set_alpha(1);