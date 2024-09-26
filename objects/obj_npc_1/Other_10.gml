if global.puzzle1_completed {
	dialogue = "Did you enjoy the ritual?";
}
else if spoken_to {
	dialogue = "Visit the temple in your own time.";
} else {
	spoken_to = true;
	dialogue = "How are you today? Are you interested in learning about the side-scrollers? We don't believe in moving vertically. Visit our temple!";
}