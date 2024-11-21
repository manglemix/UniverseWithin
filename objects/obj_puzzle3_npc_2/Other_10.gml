if global.spoke_to_puzzle_guru {
	dialogue = "Don't wait for me, get yourself out of here!";
} else {
	global.spoke_to_puzzle_guru = true;
	dialogue = "Ah! It's you! You seem to be enjoying yourself here. I on the other hand, need to rest for a moment. This old man is far out of his comfort zone. I've lived all my life without needing to jump.";
}