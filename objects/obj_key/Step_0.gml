image_xscale = scr_lerp(image_xscale, 1, 200);
image_yscale = image_xscale;

if goto_door {
	var _dx = obj_puzzle_door.x + obj_puzzle_door.sprite_width / 2 - x;
	var _dy = obj_puzzle_door.y + obj_puzzle_door.sprite_height / 2  - y;
	var _dist = sqrt(_dx * _dx + _dy * _dy);
	if _dist < 1 {
		if variable_instance_exists(obj_puzzle_door.id, "set_completed") {
			variable_global_set(obj_puzzle_door.set_completed, true);
		}
		audio_play_sound(snd_door_open, 1, false);
		instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: obj_puzzle_door.room_index });
		goto_door = false;
		picked_up = false;
	} else {
		var _dt = delta_time / 1000000;
		_dx *= 10 * _dt / _dist;
		_dy *= 10 * _dt / _dist;
		x = scr_lerp(x, obj_puzzle_door.x + obj_puzzle_door.sprite_width / 2, 250) + _dx;
		y = scr_lerp(y, obj_puzzle_door.y + obj_puzzle_door.sprite_height / 2, 250) + _dy;
	}
	
	
} else if picked_up {
	var _dx = obj_player.x - x;
	var _dy = obj_player.y - y;
	var _dist = sqrt(_dx * _dx + _dy * _dy);
	
	if _dist > 75 {
		_dx /= _dist;
		_dy /= _dist;
		var _r = _dist - 75;
		x = scr_lerp(x, x + _dx * _r, 250);
		y = scr_lerp(y, y + _dy * _r, 250);
	}
}