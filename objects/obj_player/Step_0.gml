delta_sum += delta_time

if instance_exists(obj_dialogue_box) or instance_exists(obj_transition) or paused {
	return;
}

var _x_strength = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_strength = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if disable_y {
	_y_strength = 0;
}

var _result = scr_movement(
	_x_strength,
	_y_strength,
	step,
	[obj_wall, obj_entrance, obj_pickup]
);

var _key = scr_get_obj(_result, obj_key);

if _key != noone {
	has_puzzle_key = true;
	audio_play_sound(snd_pickup, 1, false);
	with (_key) {
		picked_up = true;
	}
}

var _entrance = scr_get_obj(_result, obj_entrance);

if not disable_entrances and _entrance != noone {
	if _entrance.locked {
		if !has_puzzle_key {
			audio_play_sound(snd_locked, 1, false);
			return;
		}
		has_puzzle_key = false;
		if variable_instance_exists(_entrance, "set_completed") {
			variable_global_set(_entrance.set_completed, true);
		}
	}
	audio_play_sound(snd_door_open, 1, false);
	instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: _entrance.room_index });
}