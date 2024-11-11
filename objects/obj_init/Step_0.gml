function distance(_x2, _y2) {
	return sqrt(power(obj_player.x - _x2, 2) + power(obj_player.y - _y2, 2));
}

function process(_obj_index, _snd_index) {
	var _distance = distance(_obj_index.x, _obj_index.y);
	if _distance < _obj_index.min_radius {
		audio_sound_gain(_snd_index, _obj_index.max_gain, 0);
	} else if _distance < _obj_index.max_radius {
		var _amt = (_distance - _obj_index.min_radius) / (_obj_index.max_radius - _obj_index.min_radius);
		audio_sound_gain(_snd_index, lerp(_obj_index.max_gain, _obj_index.min_gain, _amt), 0);
	} else {
		audio_sound_gain(_snd_index, _obj_index.min_gain, 0);
	}
}

process(obj_music1_origin, music1);
process(obj_music2_origin, music2);
process(obj_music3_origin, music3);