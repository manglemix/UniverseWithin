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

draw_text(x + 5, y + 5, choice);
draw_set_color(_tmp);
draw_set_alpha(1);