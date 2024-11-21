if global.spoke_to_jenna {
	dialogue = "Take your time. I'll wait until you're finished before I try to leave myself.";
} else {
	global.spoke_to_jenna = true;
	dialogue = "Oh, hello. It seems like you're having more success than I am. As you can see, I'm a little stuck here. I wouldn't have done this if it weren't for my friend. Even though this ritual is weird, he loves doing it, and I want to tell him that I did it too.";
}