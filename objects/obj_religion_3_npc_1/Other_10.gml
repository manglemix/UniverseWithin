if global.puzzle3_completed {
	dialogue = "Did you enjoy the ritual?";
	choices = ["Yes", "No"];
}
else if spoken_to {
	dialogue = "No rush. I'm just enjoying the fresh air.";
} else {
	spoken_to = true;
	dialogue = "Hey, you're new here aren't you? We're currently looking for sponsors, so if you're interested, head on inside!";
}