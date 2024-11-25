/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha);
if global.special_interactions >= 5 {
	draw_set_color(c_fuchsia);
} else {
	draw_set_color(c_aqua);
}
draw_set_font(fnt_end);
draw_text(600, 190, "Found " + string(global.special_interactions) + "/5 Special Interactions");