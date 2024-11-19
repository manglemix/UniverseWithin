if place_meeting(x, y, obj_grass_collider) {
	if meeting {
		return;
	} else {
		meeting = true;
		image_xscale = 1.2;
		image_yscale = 1.2;
		image_angle = random_range(-15, 15);
	}
} else {
	if meeting {
		meeting = false;
		image_xscale = 1;
		image_yscale = 1;
		image_angle = 0;
	} else {
		return;
	}
}