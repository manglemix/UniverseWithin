if !interactable {
	meeting = false;
	return;
}

var _dx = obj_player.x - x - sprite_width / 2;
var _dy = obj_player.y - y - sprite_height / 2;
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