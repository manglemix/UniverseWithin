/// @description Insert description here
// You can write your code in this editor
alpha = 0;
drawing = false;
credits = false;
alarm[0] = 120;
alarm[1] = 120 + 120;

if !variable_global_exists("special_interactions") {
	global.special_interactions = 0;
}