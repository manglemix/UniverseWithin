if obj_player.paused {
	return;
}

if dialogue_i < string_length(dialogue) {
	dialogue_i = string_length(dialogue);
	event_user(1);
	return;
}
queue_delete = true;