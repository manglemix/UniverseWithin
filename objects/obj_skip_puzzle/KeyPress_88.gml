var _entrance = obj_entrance.id;

if variable_instance_exists(_entrance, "set_completed") {
	variable_global_set(_entrance.set_completed, true);
}
room_goto(_entrance.room_index);