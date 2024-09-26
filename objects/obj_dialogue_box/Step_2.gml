/// @description Insert description here
// You can write your code in this editor
if queue_delete {
	if array_length(choices) > 0 {
		queue_delete = false;
	} else {
		instance_destroy();
	}
}