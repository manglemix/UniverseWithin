/// @description Insert description here
// You can write your code in this editor
if queue_delete {
	if array_length(choices) > 0 {
		queue_delete = false;
	} else {
		for (var _i = 0; _i < array_length(choice_instances); _i++) {
			instance_destroy(choice_instances[_i]);
		}
		instance_destroy();
	}
}