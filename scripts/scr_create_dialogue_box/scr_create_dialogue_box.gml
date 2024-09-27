// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_dialogue_box() {
	if instance_exists(obj_dialogue_box) {
		instance_destroy(obj_dialogue_box);
	}
	dialogue_box = instance_create_layer(0, 0, "Dialogue", obj_dialogue_box);
	dialogue_box.dialogue = dialogue;
	dialogue_box.speaker_name = npc_name;
	dialogue_box.owner = self;
	dialogue_box.owner_user_event_num = 1;
	dialogue_box.choices = choices;
	dialogue_box.special_choices = special_choices;
	
	choices = [];
	special_choices = [];
	
	with (dialogue_box) {
		event_user(1);
	}
}