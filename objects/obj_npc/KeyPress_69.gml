if instance_exists(obj_dialogue_box) or !meeting {
	return;
}

event_user(0);
var _box = instance_create_layer(0, 0, "Dialogue", obj_dialogue_box);
_box.dialogue = dialogue;
_box.speaker_name = npc_name;
