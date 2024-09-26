// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_kill_player() {
	if dead {
		return;
	}
	dead = true;
	show_message("You died!");
	room_restart();
}