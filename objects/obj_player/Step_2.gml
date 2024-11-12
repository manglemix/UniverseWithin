if keyboard_check(vk_space) {
	if can_jump {
		if !is_on_ground and time_off_ground >= 0.1 {
			return;
		}
		var _vel = (y - last_y) / delta_time * 1000000;
		if _vel > 0 {
			_vel = 0;
		}
		y_vel = -400 + _vel;
		is_on_ground = false;
		time_off_ground = 0.1;
	}
}