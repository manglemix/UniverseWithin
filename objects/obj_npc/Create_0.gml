meeting = false;
dialogue_box = noone;

if interact_on_create {
	if !instance_exists(obj_dialogue_box) {
		event_user(0);
		scr_create_dialogue_box();
	}
}