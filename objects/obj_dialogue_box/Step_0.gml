for (var _i = 0; _i < array_length(choice_instances); _i++) {
	var _choice = choice_instances[_i];
	if _choice.selected {
		var _selected_choice = choices[_i];
		choices = [];
		show_debug_message(_selected_choice);
		queue_delete = true;
		break;
	}
}