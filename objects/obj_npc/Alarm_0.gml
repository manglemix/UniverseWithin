/// @description Shrink-Y
if (idle_flip and dialogue_box == noone) {
	image_yscale = 0.95;
} else {
	image_yscale = 1.0;
}
alarm[1] = 10;