queue_delete = false;
choices ??= [];
special_choices ??= [];
choice_instances = []
selected_choice = "";
owner = noone;
owner_user_event_num = 0;

if array_length(choices) > 0 {
	event_user(1);
}