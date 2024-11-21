draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_dialogue_name);
draw_text(35, 520, speaker_name);
if conversation_type == 1 {
	draw_sprite(spr_special_interaction, 0, 41 + string_width(speaker_name), 520);
} else if conversation_type == 2 {
	draw_sprite(spr_key_interaction, 0, 41 + string_width(speaker_name), 520);
}

draw_set_font(fnt_dialogue);
draw_text_ext(35, 570, string_copy(dialogue, 0, floor(dialogue_i)), 20, 1300);