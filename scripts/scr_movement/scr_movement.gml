// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(_x_strength, _y_strength, _step, _collide_with=[obj_wall]){
	var _magnitude = sqrt(_x_strength * _x_strength + _y_strength * _y_strength);

	if _magnitude > 0 {
		var _factor = _step / _magnitude;
		_x_strength = round(_x_strength * _factor);
		_y_strength = round(_y_strength * _factor);
		
	}

	return move_and_collide(_x_strength, _y_strength, _collide_with);
}