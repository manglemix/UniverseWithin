/// @description Insert description here
// You can write your code in this editor
dialogue_i += delta_time / 1000000 * 30;
if dialogue_i > string_length(dialogue) {
	dialogue_i = string_length(dialogue);
	event_user(1);
}