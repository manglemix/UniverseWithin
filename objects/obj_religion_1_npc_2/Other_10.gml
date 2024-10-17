dialogue = "I'm willing to bet you're going to get stuck and someone will have to come and save you.";
choices = ["Watch me", "..."];
if global.spoke_to_jenna {
	array_push(choices, "Who is Jenna?");
	special_choices = [false, false, true];
}