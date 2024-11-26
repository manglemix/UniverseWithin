if instance_exists(obj_dialogue_box) or !meeting {
	return;
}

original_xscale = image_xscale;
if !ignore_player_flip {
	if (obj_player.x < x) != talking_invert_x {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
}
alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;
image_yscale = 1;
event_user(0);
scr_create_dialogue_box();