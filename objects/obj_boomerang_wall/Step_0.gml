/// @description Insert description here
// You can write your code in this editor
timer += delta_time / 1000000;

if timer > period {
	timer -= period;
}

var _factor = cos(2*pi/period * timer) / -2 + 0.5;
var _dx = (end_x - start_x) * _factor + start_x - x;
var _dy = (end_y - start_y) * _factor + start_y - y;
var _player = instance_find(obj_player, 0);
var _step = sign(_dx);

if _dx != 0 and place_meeting(x + _dx, y, _player) {
	while abs(_dx) > 0 {
		x += _step;
		if place_meeting(x, y, _player) {
			_player.x += _step;
		}
		if abs(_dx) > abs(_step) {
			_dx -= _step;
		} else {
			_dx = 0;
		}
	}
} else {
	x += _dx;
}
_step = sign(_dy);

if _dy != 0 and place_meeting(x, y + _dy, _player) {
	while abs(_dy) > 0 {
		y += _step;
		if place_meeting(x, y, _player) {
			_player.y += _step;
		}
		if abs(_dy) > abs(_step) {
			_dy -= _step;
		} else {
			_dy = 0;
		}
	}
} else {
	y += _dy;
}