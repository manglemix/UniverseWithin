elapsed += delta_time / 1000000;
if fade_bg {
	bg_opacity -= delta_time / 1000000;
	if bg_opacity <= 0 {
		title_opacity -= delta_time / 1000000;
		if title_opacity <= 0.5 {
			instance_activate_object(obj_dialogue_box);
		}
		if title_opacity <= 0 {
			instance_destroy();
		}
	}
} else {
	subtitle_elapsed = elapsed;
}