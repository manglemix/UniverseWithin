if !visible {
	return;
}
opacity += delta_time / 1000000 * 2;
show_debug_message(opacity);
if opacity > 1 {
	opacity = 1;
}