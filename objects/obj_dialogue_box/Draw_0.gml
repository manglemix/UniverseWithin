if sprite_width == 0 or sprite_height == 0 {
	return;
}
var _width = view_wport[view_current];
var _height = view_hport[view_current];
image_xscale *= _width / sprite_width;
image_yscale *= _height / sprite_height;