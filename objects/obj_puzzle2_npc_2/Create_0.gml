/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if variable_global_exists("spoke_to_mystery") {
	if global.spoke_to_mystery {
		instance_destroy();
	}
} else {
	global.spoke_to_mystery = false;
}
