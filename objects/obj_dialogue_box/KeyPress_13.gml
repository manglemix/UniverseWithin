if obj_player.paused {
	return;
}

if dialogue_i < string_length(dialogue) {
	dialogue_i = string_length(dialogue);
	event_user(1);
	return;
}

if array_length(choice_instances) == 1 {
	selected_choice = 0;
	event_user(0);
} else if array_length(choice_instances) == 0 {
	queue_delete = true;
}