/// @description Insert description here
// You can write your code in this editor
var _right = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _down = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var _magnitude = sqrt(_right * _right + _down * _down);

if _magnitude > 0 {
	var _factor = max_speed * delta_time / _magnitude / 1000000;
	_right *= _factor;
	_down *= _factor;
}

if place_meeting(x + _right, y, obj_wall) {
	while !place_meeting(x + sign(_right), y, obj_wall)
		x += sign(_right);
	x -= sign(_right);
		
} else {
	x += _right;
}

if place_meeting(x, y + _down, obj_wall) {
	while !place_meeting(x, y + sign(_down), obj_wall)
		y += sign(_down);
	y -= sign(_down);
		
} else {
	y += _down;
}

