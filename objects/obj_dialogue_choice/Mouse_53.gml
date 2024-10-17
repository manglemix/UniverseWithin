/// @description Insert description here
// You can write your code in this editor
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
if _mouse_x < x or _mouse_x >= x + sprite_width * image_xscale or _mouse_y < y or _mouse_y >= y + sprite_height * image_yscale {
	return;
}
var _choice = choice;
with (dialogue_box) {
	selected_choice = _choice;
	event_user(0);
}