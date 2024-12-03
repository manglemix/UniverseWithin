if (credits) {
	if (alpha < 0.6) {
		alpha = 1;
		return;
	}
} else if (drawing and alpha >= 0.99) {
	alarm[1] = 0;
	return;
} else {
	return;
}
instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: -1 });