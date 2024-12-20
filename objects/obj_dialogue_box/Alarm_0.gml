/// @description Create Choices
var _choice_count = array_length(choices);
var _width = 1330 / _choice_count;

for (var _i = 0; _i < _choice_count; _i++) {
	var _choice_special = false;
	if _i < array_length(special_choices) {
		_choice_special = special_choices[_i];
	}
	var _dialogue_box = self;
	var _choice_inst = instance_create_layer(
		(25 + _width * _i) * image_xscale,
		675 * image_yscale,
		"Dialogue",
		obj_dialogue_choice,
		{
			choice: choices[_i],
			depth: depth - 1,
			image_xscale: (_width - 20) / 64 * image_xscale,
			dialogue_box: _dialogue_box,
			image_yscale: image_yscale,
			special: _choice_special,
			parent_x_scale: image_xscale
		}
	);
	array_push(choice_instances, _choice_inst);
}
