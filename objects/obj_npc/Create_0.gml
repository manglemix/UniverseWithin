meeting = false;
dialogue_box = noone;

if interact_on_create {
	if !instance_exists(obj_dialogue_box) {
		event_user(0);
		scr_create_dialogue_box();
	}
}

if idle_talking {
	image_speed = 0;
}
alarm[0] = round(random_range(100, 600));