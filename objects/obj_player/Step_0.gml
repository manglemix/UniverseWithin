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

var _collide_with = [obj_wall, obj_entrance, obj_gate];

if puzzle_key == noone {
	array_push(_collide_with, obj_key1);
}


if can_jump {
	var _result = move_and_collide(0, y_vel * delta_time / 1000000, obj_wall);
	if array_length(_result) == 0 {
		y_vel += 1000 * delta_time / 1000000;
	} else {
		y_vel = 0;
		is_on_ground = true;
	}
}

var _result = scr_movement(
	x_strength,
	y_strength,
	step,
	_collide_with
);

var _key = scr_get_obj(_result, obj_key1);

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

var _gate = scr_get_obj(_result, obj_gate);

if _gate != noone {
	if !global.puzzle1_completed or !global.puzzle2_completed or !global.puzzle3_completed {
		var _dialogue_box = instance_create_layer(0, 0, "Dialogue", obj_dialogue_box);
		_dialogue_box.dialogue = "I need to finish more puzzles first";
		_dialogue_box.speaker_name = "You";
		_dialogue_box.owner = self;
	
		with (_dialogue_box) {
			event_user(1);
		}
	} else {
		audio_play_sound(snd_door_open, 1, false);
		instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: rm_end });
	}
}