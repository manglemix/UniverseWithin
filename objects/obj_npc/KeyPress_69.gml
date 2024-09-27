if instance_exists(obj_dialogue_box) or !meeting {
	return;
}

event_user(0);
scr_create_dialogue_box();