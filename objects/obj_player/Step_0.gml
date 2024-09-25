/// @description Insert description here
// You can write your code in this editor
var _result = scr_movement(
	keyboard_check(ord("D")) - keyboard_check(ord("A")),
	keyboard_check(ord("S")) - keyboard_check(ord("W")),
	max_speed,
	[obj_wall, obj_entrance]
);

var _entrance = scr_get_obj(_result, obj_entrance);

if _entrance != noone and (!_entrance.locked or has_puzzle_key) {
	if _entrance.locked {
		has_puzzle_key = false;
	}
	room_goto(_entrance.room_index);
}
