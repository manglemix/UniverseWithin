if dialogue_box.selected_choice == "Yes" {
	dialogue = "Brilliant! I hope this helps you on your journey.";
} else {
	dialogue = "Well then you better get back in there until you do!";
}
scr_create_dialogue_box();
interactable = false;