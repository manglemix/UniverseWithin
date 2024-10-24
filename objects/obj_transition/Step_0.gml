/// @description Insert description here
// You can write your code in this editor
if not fading {
	return;
}

if fade_in {
	if alpha <= 0.01 {
		alpha = 0;
		instance_destroy();
	} else {
		alpha = scr_lerp(alpha, 0, weight);
	}
} else {
	if alpha >= 0.99 {
		alpha = 1;
		if next_room_index == -1 {
			game_restart();
		} else {
			room_goto(next_room_index);
		}
	} else {
		alpha = scr_lerp(alpha, 1, weight);
	}
}