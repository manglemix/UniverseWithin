/// @description Insert description here
// You can write your code in this editor

var _player_x = obj_player.x + obj_player.sprite_width / 2;
var _player_y = obj_player.y + obj_player.sprite_height / 2;

var _hide = _player_x > x and _player_x < x + sprite_width and
	_player_y > y and _player_y < y + sprite_height;

if (_hide) {
	alpha = scr_lerp(alpha, 0, weight);
} else {
	alpha = scr_lerp(alpha, 1, weight);
}
