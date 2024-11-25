if !visible {
	return;
}
opacity += delta_time / 1000000 * 2;
if opacity > 1 {
	opacity = 1;
}