/// @description Skip to end
audio_play_sound(snd_door_open, 1, false);
instance_create_layer(0, 0, "Instances", obj_transition, { next_room_index: rm_end });