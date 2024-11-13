dialogue = "If you ask me, these people are scary. There are so many of them, I don't know how the Guru keeps them all in check. We're a lot more organized.";
choices = [];
if global.spoke_to_interesting_npc {
	choices = ["Have a conversation with one of them. You'll find that these are kind and interesting people."];
	special_choices = [true];
}