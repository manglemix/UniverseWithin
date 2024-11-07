if global.puzzle1_completed {
	dialogue = "Did you enjoy the ritual?";
	choices = ["Yes", "No"];
}
else if spoken_to {
	dialogue = "Visit the temple in your own time.";
} else {
	spoken_to = true;
	dialogue = "How are you today? You seem pre-occupied with something. Are you interested in learning about our religion? Visit our temple!";
}