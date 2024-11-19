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
			global.puzzle1_completed = false;
			global.puzzle2_completed = false;
			global.puzzle3_completed = false;
			global.spoke_to_angry_priest = false;
			global.spoke_to_corner_nun = false;
			global.spoke_to_interesting_npc = false;
			global.spoke_to_jenna = false;
			global.spoke_to_mystery = false;
			global.spoke_to_puzzle_guru = false;
			global.spoke_to_science_priest = false;
			global.special_interactions = 0;
			game_restart();
		} else {
			room_goto(next_room_index);
		}
	} else {
		alpha = scr_lerp(alpha, 1, weight);
	}
}