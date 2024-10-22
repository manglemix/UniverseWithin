var _entrance = obj_entrance.id;

if variable_instance_exists(_entrance, "set_completed") {
	variable_global_set(_entrance.set_completed, true);
}

instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: _entrance.room_index });
//room_goto(_entrance.room_index);