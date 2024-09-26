if global.dialogue_visible or !meeting {
	return;
}

event_user(0);
var _box = instance_create_layer(0, 0, "Instances", obj_dialogue_box);
_box.dialogue = dialogue;
_box.speaker_name = npc_name;
