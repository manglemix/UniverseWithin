// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_obj(_array, _obj_type){
	for (var _i = 0; _i < array_length(_array); _i++) {
		if _array[_i].object_index == _obj_type {
			return _array[_i];
		}
	}
	return noone;
}