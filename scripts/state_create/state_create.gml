/// @function state_create
/// @description Create a new state
/// @arg {enum} key
/// @arg {real} script

var key = argument0;
var script = argument1;
ds_map_replace(_state_map, key, script);