draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_dialogue_name);
draw_text(35, 520, speaker_name);

draw_set_font(fnt_dialogue);
draw_text(35, 570, dialogue);