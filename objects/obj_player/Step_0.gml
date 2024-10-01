var _x_strength = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_strength = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if instance_exists(obj_dialogue_box) {
	return;
}

if disable_y {
	_y_strength = 0;
}

var _result = scr_movement(
	_x_strength,
	_y_strength,
	max_speed,
	[obj_wall, obj_entrance, obj_pickup]
);

var _key = scr_get_obj(_result, obj_key);

if _key != noone {
	has_puzzle_key = true;
	with (_key) {
		scr_pickup();
	}
}

var _entrance = scr_get_obj(_result, obj_entrance);

if not disable_entrances and _entrance != noone and (!_entrance.locked or has_puzzle_key) {
	if _entrance.locked {
		has_puzzle_key = false;
		if variable_instance_exists(_entrance, "set_completed") {
			variable_global_set(_entrance.set_completed, true);
		}
	}
	room_goto(_entrance.room_index);
}