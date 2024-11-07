if global.puzzle1_completed {
	dialogue = "Did you enjoy the ritual?";
	choices = ["Yes", "No"];
}
else if spoken_to {
	dialogue = "Come on! Hurry up!";
} else {
	spoken_to = true;
	dialogue = "Ah! A worthy participant! Step inside and join us, we're about to start!";
}