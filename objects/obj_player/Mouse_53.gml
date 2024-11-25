/// @description Insert description here
// You can write your code in this editor
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

if paused {
	var _start_x = view_wport[0] / 2 - 10;
	var _start_y = view_hport[0] / 2 - 20;
	if _mouse_x < _start_x or _mouse_x >= _start_x + 135 {
		return;
	}
	if _mouse_y < _start_y or _mouse_y >= _start_y + 80 {
		return;
	}
	if _mouse_y >= _start_y + 40 {
		game_end(0);
	} else {
		instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: -1 });
		hide_pause_text = true;
	}
}