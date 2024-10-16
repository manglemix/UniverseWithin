// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lerp(_from, _to, _weight) {
	var _blend = power(0.5, delta_time / 1000000 * _weight);
	return _from + (_to - _from) * _blend;
}