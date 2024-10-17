/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !variable_global_exists("spoke_to_jenna") {
	global.spoke_to_jenna = false;
}

if !variable_global_exists("special_interactions") {
	global.special_interactions = 0;
}

leave = false;