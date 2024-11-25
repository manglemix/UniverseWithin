if !interactable {
	meeting = false;
	return;
}

if (dialogue_box == noone) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = 1;
}

var _dx = obj_player.x - x;
var _dy = obj_player.y - y;
var _magnitude = sqrt(_dx * _dx + _dy * _dy);

if _magnitude > 0 {
	_dy /= _magnitude;
	_dx /= _magnitude;
	meeting = false;
	
	for (var _i = 0; _i < interaction_radius; _i++) {
		if place_meeting(x + _dx * _i, y + _dy * _i, obj_player) {
			meeting = true;
			break;
		}
	}
}