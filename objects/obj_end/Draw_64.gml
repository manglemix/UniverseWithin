/// @description Insert description here
// You can write your code in this editor
if (credits) {
	draw_set_alpha(1);
} else {
	draw_set_alpha(alpha);
}
if global.special_interactions >= 5 {
	draw_set_color(c_fuchsia);
} else {
	draw_set_color(c_aqua);
}
draw_set_font(fnt_end);
draw_text(565, 190, "Found " + string(global.special_interactions) + "/5 Special Interactions");
if (credits) {
	draw_set_alpha(alpha);
} else {
	return;
}
draw_set_color(c_gray);
draw_text(565, 300, "Programmer: Najman Husaini\n2D Artist: Adam Anderson\nMusic Artist & Producer: Jared Rigby\nInstructor: Greg Bayles");
draw_text(1300, 850, "ESC to restart");