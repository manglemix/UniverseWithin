draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_dialogue_name);
draw_text_transformed(35 * image_xscale, 520 * image_yscale, speaker_name, image_xscale, image_yscale, 0);
if conversation_type == 1 {
	draw_sprite_ext(spr_special_interaction, 0, (24 + string_width(speaker_name)) * image_xscale, 500 * image_yscale, image_xscale * 3, image_yscale * 3, 0, c_white, 1);
} else if conversation_type == 2 {
	draw_sprite_ext(spr_key_interaction, 0, (24 + string_width(speaker_name)) * image_xscale, 500 * image_yscale, image_xscale * 3, image_yscale * 3, 0, c_white, 1);
}

draw_set_font(fnt_dialogue);
draw_text_ext_transformed(35 * image_xscale, 570 * image_yscale, string_copy(dialogue, 0, floor(dialogue_i)), 20, 1100 * image_xscale, image_xscale, image_yscale, 0);