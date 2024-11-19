music1 = audio_play_sound(snd_music1, 100, true);
music2 = audio_play_sound(snd_music2, 100, true);
music3 = audio_play_sound(snd_music3, 100, true);
global.special_interactions = 0;
for (var _x = 0; _x < 45; _x += 1) {
	for (var _y = 0; _y < 45; _y += 1) {
		instance_create_layer(_x * 30 + 15, _y * 30 + 15, "Grass", obj_grass);
	}
}