/// @description Choices are provided
var _choice_count = array_length(choices);
var _width = 1330 / _choice_count;

for (var _i = 0; _i < _choice_count; _i++) {
	var _choice_inst = instance_create_layer(25 + _width * _i, 655, "Dialogue", obj_dialogue_choice);
	_choice_inst.choice = choices[_i];
	_choice_inst.depth = depth - 1;
	_choice_inst.image_xscale = (_width - 20) / 64;
	_choice_inst.dialogue_box = self;
	if _i < array_length(special_choices) {
		_choice_inst.special = special_choices[_i];
	}
	array_push(choice_instances, _choice_inst);
}
