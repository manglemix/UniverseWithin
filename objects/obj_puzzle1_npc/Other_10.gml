if global.spoke_to_jenna {
	dialogue = "Take your time. I'll wait until you're finished.";
} else {
	global.spoke_to_jenna = true;
	dialogue = "Oh, you're new. Newcomers are always confused by our beliefs. After a while it becomes second nature though.";
}