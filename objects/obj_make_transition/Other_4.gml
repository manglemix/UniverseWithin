/// @description Insert description here
// You can write your code in this editor
var _fade_in_delay = 10;
if first_time {
	first_time = false;
	_fade_in_delay = 40;
}
instance_create_layer(0, 0, "Instances", obj_transition, { fade_in: true, fade_in_delay: _fade_in_delay });