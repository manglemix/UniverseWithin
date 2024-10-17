if dialogue_box.selected_choice == "Watch me" {
	dialogue = "As enjoyable as that may be, I'm not wasting my time.";
	interactable = false;
	leave = true;
	scr_create_dialogue_box();
} else if dialogue_box.selected_choice == "..." {
	
} else {
	dialogue = "You met Jenna? I'm impressed. She doesn't exactly make herself easy to find. However, I don't know who she is.";
	interactable = false;
	leave = true;
	global.special_interactions += 1;
	scr_create_dialogue_box();
}