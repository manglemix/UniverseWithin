delta_sum += delta_time

if instance_exists(obj_dialogue_box) or instance_exists(obj_transition) or paused {
	x_strength = scr_lerp(x_strength, 0, 250);
	y_strength = scr_lerp(y_strength, 0, 250);
	return;
}

var _x_strength = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _y_strength = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x_strength = scr_lerp(x_strength, _x_strength, 110);
y_strength = scr_lerp(y_strength, _y_strength, 110);

if disable_y {
	y_strength = 0;
}

if _x_strength == 0 {
	// do nothing
} else if _x_strength < 0 {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

var _collide_with = [obj_wall, obj_entrance];

if puzzle_key == noone {
	array_push(_collide_with, obj_key);
}

var _result = scr_movement(
	x_strength,
	y_strength,
	step,
	_collide_with
);

var _key = scr_get_obj(_result, obj_key);

if _key != noone {
	puzzle_key = _key;
	audio_play_sound(snd_pickup, 1, false);
	with (puzzle_key) {
		event_user(0);
	}
}

var _entrance = scr_get_obj(_result, obj_entrance);

if not disable_entrances and _entrance != noone {
	if _entrance.locked {
		if puzzle_key != noone {
			with (puzzle_key) {
				event_user(1);
			}
			puzzle_key = noone;
		} else {
			audio_play_sound(snd_locked, 1, false);
		}
		return;
	}
	audio_play_sound(snd_door_open, 1, false);
	instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: _entrance.room_index });
}