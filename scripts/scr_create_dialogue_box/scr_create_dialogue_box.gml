// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_dialogue_box() {
	if instance_exists(obj_dialogue_box) {
		instance_destroy(obj_dialogue_box);
	}
	var _owner = self;
	dialogue_box = instance_create_layer(
		0,
		0,
		"Dialogue",
		obj_dialogue_box,
		{
			dialogue: dialogue,
			speaker_name: npc_name,
			owner: _owner,
			owner_user_event_num: 1,
			choices: choices,
			special_choices: special_choices,
			conversation_type: conversation_type
		}
	);
	
	choices = [];
	special_choices = [];
}